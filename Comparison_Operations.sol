/*
Comparison Operations:-

- eq(x, y) --> equality
- iszero(x) --> 1 if x == 0, 0 otherwise
- lt(x, y) --> 1 if x < y, 0 otherwise
- gt(x, y) --> 1 if x > y, 0 otherwise
*/

/*
Examples:
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract ComparisonOp{
function comparisonOp(uint256 n) public pure returns(uint256,uint256,uint256,uint256){
        uint256 res;
        uint256 v1;
        uint256 v2;
        uint256 v3;
        assembly {
            for {let i:=0} lt(i,n) {i:=add(i,1)}{
                
                if eq(i,3){
                    continue 
                }
                res:=add(res,i)
                v1:=iszero(n)
                v2:=gt(res,i)
                v3:=lt(res,i)
            }
        
        }
        return (res,v1,v2,v3);
    }
}
