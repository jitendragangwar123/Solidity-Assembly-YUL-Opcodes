/*
Single variables being stored in one slot:
- Storage slots are 256-bit words. To get the storage slot of a variable, use the .slot keyword.
- To load a value from storage, use the sload keyword and pass in the storage slot as a parameter.
- To store a value to storage, use the sstore keyword and pass in the storage slot and value as parameters.
*/

/*
Example:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract StorageSlots{
    uint256 a;
    function set(uint256 _a) public {
        assembly {
            sstore(a.slot, _a)
        }
    }

    function get() public view returns (uint256 a_) {
        assembly {
            a_ := sload(a.slot)
        }
    }
}


/*
Multiple variables being packed into one slot:
- Offset is the number of bytes from the start of the slot that the variable starts at. To get the offset of a variable, use the .offset keyword.
*/


/*
Example of setter and getter function for packed storage variables:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract StorageSlots2{
    uint128 a;
    uint96 b;
    uint16 c;
    uint8 d;

    function set(uint16 _c) public {
        assembly{
            // Get the storage slot of the variable
            let wholeSlot := sload(c.slot)

            // Clear the variable's bits in the slot. Since it is a uint16, it is 2 bytes long.
            let cleared := and(wholeSlot, 0xffff0000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff)

            // Shift the new value to the left by the offset of the variable multiplied by 8(1 byte = 8 bits)
            let shifted := shl(mul(c.offset, 8), _c)

            // Combine the cleared slot and the shifted value
            let newValue := or(shifted, cleared)

            // Store the new value in the slot
            sstore(c.slot, newValue)
        }
    }

    function get() public view returns (uint16 c_) {
        assembly {
            // Get the storage slot of the variable
            let wholeSlot := sload(c.slot)

            // Shift the slot to the right by the offset of the variable
            let shifted := shr(mul(c.offset, 8), wholeSlot)

            // Mask the slot to get the value of the variable
            c_ := and(shifted, 0xffff)
        }
    }
}
