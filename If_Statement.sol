/*
 - Yul has no boolean type. Instead, any value other than 0 is considered true.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract IfStatement{
function ifStatements() public pure returns(uint256,uint256,bytes32,bytes32){
        uint256 res1;
        uint256 res2;
        bytes32 res3;
        bytes32 res4;
        assembly {
            //to check number is 2
            if 2 { 
                res1:=0x2
            }
            //to check iis number is zero
            if 0 { 
                res2:=0x0
            }
            // to check given number is zero
            if iszero(0) {
                res3:="Yes"
            }
            // to check to values is equals or not
            if eq(res1,res2){
                res4:="No"
            }
        }
        return (res1,res2,res3,res4);
    }
}
