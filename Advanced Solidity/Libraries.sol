pragma solidity ^0.5.2;
 
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";

// Other libraries:

// https://github.com/Modular-Network/ethereum-libraries

// https://github.com/alianse777/solidity-standard-library

// https://github.com/OpenZeppelin/openzeppelin-solidity

// https://github.com/ethereum/dapp-bin/tree/master/library
 
contract Bank {
    mapping(address => uint) public accounts;
    using SafeMath for uint256;
 
    function deposit() public payable {
       require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
       accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }
    
    function withdraw(uint money) public {
       require(money <= accounts[msg.sender]);
       accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}