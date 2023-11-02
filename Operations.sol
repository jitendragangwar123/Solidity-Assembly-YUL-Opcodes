/*
Addition :
let x := add(1,2)
*/
/*
Subtraction :
let x := sub(1,2) 
*/
/*
Multiplication :
let x := mul(x, y)
*/
/*
Division :
let x:=div(x, y)
*/
/*
Modulo :
let x:=mod(x, y)
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract operations{
function fun() public pure returns (uint256,uint256,uint256,uint256,uint256) {
        uint256 additon;
        uint256 subtraction;
        uint256 multiplication;
        uint256 division;
        uint256 modulo;

        assembly {
           additon:= add(1,2)
           subtraction:= sub(4,1)
           multiplication:= mul(1,6)
           division:= div(6,2)
           modulo:= mod(2,8)

        }
        return(additon,subtraction,multiplication,division,modulo);
    }
}
