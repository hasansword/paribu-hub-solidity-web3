// SPDX-License-Identifier: MIT
pragma solidity 0.8.7

contract ValueTypes{
    bool public b = true;
    uint public u = 123; // only 0 or above number till 2**256 -1 
    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = "0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5";
    bytes32 public b32 = "0x7465737400000000000000000000000000000000000000000000000000000000"
}