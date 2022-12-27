//SPDX-Identifier-License: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public x;
    
    constructor(uint _x) {
        owner = msg.sender;//set the owner to the account that deploy this contract.
        x = _x; //set the x from the input
    }
}