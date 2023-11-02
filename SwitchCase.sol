/*
 - Switch statements are similar to if statements, but they can have only one case that is true, 
 as the other cases are not checked after one is true.
*/

/*
Example:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract SwitchCase{
function switchCase(uint256 n) public pure returns(uint256){
        uint256 res;
        assembly {
            switch n
            case 0 {
                // if n == 0 
                res:=0
            }
            case 1 {
                // if n == 1
                res:=1
            }
            default {
                // if neither case is true
                res:=0
            }
        }
        return res;
    }
}
