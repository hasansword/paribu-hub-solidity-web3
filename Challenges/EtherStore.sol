// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Collector { // 0x48E86De60Dc3e3a5b22A0625BBda5b38B3407E18
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender; 
    }

    // this function update balance by value of 'msg.value'
    receive() external payable {
        balance += msg.value;
    }

    // this function sends ETH
    function withdraw(uint256 amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        destAddr.transfer(amount);
        balance -= amount;
    }
}