// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Immutables are variables that cannot be modified. 
//The difference from Constant is that the value of the variable marked with 
//immutable can be changed at the beginning with the constructor.
contract Immutable{
    // 45718 gas cost without immutable
    // 43585 gas cost with immutable 
    address public immutable owner;

    constructor(){
        owner = msg.sender;
    }

    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }

}