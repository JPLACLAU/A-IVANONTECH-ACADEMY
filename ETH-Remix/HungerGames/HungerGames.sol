pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

import "./Ownable.sol";
import "./TimeoftheGames.sol";



contract HungerGames is Ownable {
    //state variables

    uint256 public peopleCount = 0;

    mapping(uint => Person) public people;
    
    struct Person{
        uint _id;
        uint _age;
        string _name;
        uint _weight; //this value is in integer kilograms. 
        //IF you weith 105,5 kilogramos, you round down to 105 kg. If you weight 105,6kg, round up to 106kg.
        uint _month;
        uint _investedmoney;
    }

    function addPerson(uint _id, uint _age, string memory _name, uint _weight, uint _month, uint _investedmoney)
     public onlyOwner {
        incrementCount();
        people[peopleCount] = Person(_id , _age, _name, _weight, _month, _investedmoney);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }

    function getPerson(uint _index) public view returns (uint, uint, string memory, uint, uint, uint) {
        Person memory personToReturn = people[_index];
        return (personToReturn._id, personToReturn._age, personToReturn._name, personToReturn._weight, 
        personToReturn._month, personToReturn._investedmoney);
        
    }
  
}