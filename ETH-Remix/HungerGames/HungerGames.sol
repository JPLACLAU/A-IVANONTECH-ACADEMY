pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

contract HungerGames {
    //state variables
    
    struct Person{
        uint age;
        string name;
        uint weight; //this value is in integer kilograms. 
        //IF you weith 105,5 kilogramos, you round down to 105 kg. If you weight 105,6kg, round up to 106kg.
        uint month;
        uint investedmoney;
    }

    Person[] people;

    function addPerson(uint _age, string memory _name, uint _weight, uint _month, uint _investedmoney) public {
        Person memory newPerson = Person(_age, _name, _weight, _month, _investedmoney);
        people.push(newPerson);
    }

    function getPerson(uint _index) public view returns (uint, string memory, uint, uint, uint) {
        Person memory personToReturn = people[_index];
        return (personToReturn.age, personToReturn.name, personToReturn.weight, personToReturn.month,
         personToReturn.investedmoney);
        
    }
  
    function count (int number) public pure returns(int){
        for(int i=0;i<10;i++){
            number++;
        }
        return number;
    }

    mapping(address => uint) balance;

    function addBalance(uint _toAdd) public returns (uint){
        balance [msg.sender] += _toAdd;
        return balance [msg.sender];
    }

    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }
}