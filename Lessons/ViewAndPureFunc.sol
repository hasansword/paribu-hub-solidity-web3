//SPDX-Identifier-License: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions{
    uint public num;

    function viewFunc() external view returns (uint){
        return num;
    }

    function pureFunc() external pure returns(uint){
        return 1;
    }

    function addToNum(uint x) external view returns(uint){
        return x + num;
    }

    function add(uint a, uint b) external pure returns(uint){
        return a + b;
    }
}