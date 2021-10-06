pragma solidity ^0.5.0;
 
// Animal is an abstract contract
contract Animal {
 string public breed;
 uint public age;
 uint public weight;
 
 constructor() public {
 age = 1;
 weight = 1;
 }
 
 function sleep() pure public returns (string memory) {return "Zzzzz...";}
 function eat() pure public returns (string memory) {return "Nom nom..";}
 function talk() pure public returns (string memory);
}
 
contract Cat is Animal {
    constructor() public {
        breed = "Persian";
        age = 3;
        weight = 5;
    }
    function talk() pure public returns (string memory) { return "miaow";}
}
 
contract Dog is Animal {
    constructor() public {
        breed = "Labrador";
        age = 5;
        weight = 3;
    }
    function talk() pure public returns (string memory) {return "bark bark";}
}