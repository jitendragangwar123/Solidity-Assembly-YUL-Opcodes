/*
Syntax:
 function forLoop(uint256 n) public {
        assembly {
            for {let i := 0} lt(i, n) {i := add(i, 1)} {
                // do something
            }
        }
    }
                  or
                  
    function forLoop(uint256 n) public {
        assembly {
            let i := 0
            for { } lt(i, n) { } {
                // do something
                i := add(i, 1)
            }
        }
    }
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Loops{
function forLoop(uint256 n) public pure returns(uint256){
        uint256 sum=0;
        assembly {
            for {let i := 0} lt(i, n) {i := add(i, 1)} {
                sum:= add(sum,i)
            }
        }
        return(sum);
    }
}



