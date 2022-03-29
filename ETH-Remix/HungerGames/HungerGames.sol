pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

contract HungerGames {
    //state variables
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

    
    struct Person{
        uint256 _id;
        uint _age;
        string _name;
        uint _weight; //this value is in integer kilograms. 
        //IF you weith 105,5 kilogramos, you round down to 105 kg. If you weight 105,6kg, round up to 106kg.
        uint _month;
        uint _investedmoney;
    }


    function addPerson(uint256 _id, uint _age, string memory _name, uint _weight, uint _month, uint _investedmoney)
     public {
        peopleCount += 1;
        people[peopleCount] = Person(_id , _age, _name, _weight, _month, _investedmoney);
    }

    function getPerson(uint _index) public view returns (uint256, uint, string memory, uint, uint, uint) {
        Person memory personToReturn = people[_index];
        return (personToReturn._id, personToReturn._age, personToReturn._name, personToReturn._weight, 
        personToReturn._month, personToReturn._investedmoney);
        
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