```
Use assembly keyword for writing the smart contract in Yul.
```
```shell
contract C {
    function f() public {
        assembly {
            // code example
        }
    }
}
```


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract helloWorld{
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
