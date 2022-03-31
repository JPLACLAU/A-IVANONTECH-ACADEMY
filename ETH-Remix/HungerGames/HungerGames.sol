pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

import "./Ownable.sol";
import "./TimeoftheGames.sol";

// The HungerGames contract is a multisig contract with escrow properties. It is recomended to use with you friends 
// and with small amounts of money, just for the lulz.

// This project is in dedication to my friend Marcelo who had the original idea this summer to lose weight
// by placing a bet against yourself while competing with friends.

contract HungerGames is Ownable, Timeable {
    //state variables

    uint256 public peopleCount = 0;

    mapping(uint => Person) public people;
    
    struct Person{
        uint _id;
        string _name;
        uint _weight; // This value is in plain kilograms without commas. If you weigth 105,5 kilogramos,
                      // round down to 105 kg. If you weight 105,6kg, round up to 106kg.
        uint _bet;
        address payable _receiver;

    }

    function addPerson(uint _id, string memory _name, uint _weight, uint _bet, address payable _receiver)
     public onlyOwner onlyWhileOpen {
        incrementCount();
        people[peopleCount] = Person(_id , _name, _weight, _bet, _receiver);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }

    function getPerson(uint _index) public view returns (uint, string memory, uint, uint, address payable) {
        Person memory personToReturn = people[_index];
        return (personToReturn._id, personToReturn._name, personToReturn._weight, personToReturn._bet,
        personToReturn._receiver);   
    }
  
}