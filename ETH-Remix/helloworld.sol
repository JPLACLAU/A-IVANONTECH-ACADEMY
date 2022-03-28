pragma solidity 0.7.5;
//SPDX-License-Identifier: UNLICENSED

contract HelloWorld {
    //state variables
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