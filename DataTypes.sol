/*
Use assembly keyword for writing the smart contract in Yul.
Example:
contract C {
    function f() public {
        assembly {
            // code example
        }
    }
}
*/

/*
Variable :- To declare a variable with let keyword.
Example:
let x := 1
*/

/*
Yul Types :- Yul has only 1 type: bytes32. This can hold any value. The compiler will automatically insert conversions as needed.
Integer : constants in decimal or hexadecimal notation.
ASCII strings : Which may contain hex escapes \xNN and Unicode escapes \uNNNN where N are hexadecimal digits.
Hex strings : (e.g. hex"616263").
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract DataTypes{
function fun() public pure returns (bool, uint256, bytes32) {
        bool x;
        uint256 y;
        bytes32 z;

        assembly {
            x := 1 // true 
            y := 0xa  // 10
            z := "Hello World!" // "0x48656c6c6f20576f726c64210000000000000000000000000000000000000000"
        }

        return( x, y, z);
    }
}
