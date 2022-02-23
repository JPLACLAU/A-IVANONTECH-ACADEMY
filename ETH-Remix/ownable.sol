pragma solidity 0.7.5;
//SPDX-License-Identifier: UNLICENSED


contract Ownable {
    address public owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;    //run the function
    }

    constructor (){
        owner = msg.sender;
    }
}