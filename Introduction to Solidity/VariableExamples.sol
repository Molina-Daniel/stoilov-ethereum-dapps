// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.4.24;
 
contract VariableExamples{
    bool public switchedOn = true;
    address public owner = msg.sender;
    uint8 public number = 8;
    bytes32 public awesome1 = "Solidity is awesome!";
    string public awesome2 = "Solidity is awesome!";
}