/*
Bitwise Operations :- 

and(x, y) - bitwise “and” of x and y
or(x, y) - bitwise “or” of x and y
xor(x, y) - bitwise “xor” of x and y
not(x) - bitwise “not” of x (every bit of x is negated)
byte(n, x) - nth byte of x, where the most significant byte is the 0th byte
shl(x, y) - logical shift left y by x bits
shr(x, y) - logical shift right y by x bits
*/

/*
Example:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract BitwiseOp{
    function bitwiseOp(uint256 x,uint256 y,uint256 n) public pure returns(uint256,uint256,uint256,bytes32,uint256,uint256){
        uint256 v1;
        uint256 v2;
        uint256 v3;
        //uint256 v4;
        bytes32 v5;
        uint256 v6;
        uint256 v7;
        assembly{
            v1:=and(x, y) 
            v2:=or(x, y) 
            v3:=xor(x, y) 
            //v4:=not(x) 
            v5:=byte(n, x) 
            v6:=shl(x, y) //y^x*2
            v7:=shr(x, y) //y^x/2
        }
        return (v1,v2,v3,v5,v6,v7); 
    }
}



