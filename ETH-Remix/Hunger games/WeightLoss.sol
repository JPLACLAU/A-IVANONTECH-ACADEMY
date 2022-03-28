pragma solidity 0.7.5;
//SPDX-License-Identifier: UNLICENSED

contract WeightLoss {
    //state variables
    
    struct Person{
        uint age;
        string name;
        uint weight; //this value is in integer kilograms. 
        //IF you weith 105,5 kilogramos, you round down to 105 kg. If you weight 105,6kg, round up to 106kg.
        uint month;
    }

    Person[] people;

    function addPerson(uint _age, string memory _name, uint _weight, uint _month) public {
        Person memory newPerson = Person(_age, _name, _weight, _month);
        people.push(newPerson);
    }

    function getPerson(uint _index) public view returns (uint, string memory, uint, uint) {
        Person memory personToReturn = people[_index];
        return (personToReturn.age, personToReturn.name, personToReturn.weight, personToReturn.month);
        
    }


    string message;

    constructor(string memory _message){
        message = _message;
    }

    function hello() public returns(string memory){
            return message;
    }
    
    function count(int number) public pure returns(int){
        int i= 0;
        while(i < 10){
            number++;
            i++;
        }
        return number;
    }
    function count2 (int number) public pure returns(int){
        for(int i=0;i<10;i++){
            number++;
        }
        return number;
    }
}