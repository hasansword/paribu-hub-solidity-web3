// SPDX-Identifier-License: MIT
pragma solidity ^0.8.7;

//Constants are variables that cannot be modified. 
//Replacing variables with constants can reduce gas cost of calling function on the smart contract. 
//21420 gas
contract Constants{
    address public constant MY_ADDRESS = 0x00000000219ab540356cBB839Cbe05303d7705Fa;
    uint public constant MY_UNIT = 123;
}

//	23553 gas
contract Var {
    address public MY_ADDRESS = 0x00000000219ab540356cBB839Cbe05303d7705Fa;
}