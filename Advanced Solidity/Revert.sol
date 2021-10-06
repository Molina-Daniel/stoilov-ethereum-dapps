pragma solidity ^0.5.0;
 
contract Bank {
 mapping(address => uint) public accounts;
 
 function deposit() public payable {
    if(accounts[msg.sender] + msg.value <= accounts[msg.sender]) {
        revert("Overflow error");
    }
    accounts[msg.sender] += msg.value;
 }
 
 function withdraw(uint money) public {
    if(money <= accounts[msg.sender]){
    //can have more if statements
    revert();
    }
    accounts[msg.sender] -= money;
 }
}