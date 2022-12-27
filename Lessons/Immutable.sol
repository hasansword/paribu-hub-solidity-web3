// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

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