pragma solidity 0.8.8;
//SPDX-License-Identifier: UNLICENSED

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public owner;

    constructor(){
        owner = msg.sender;
        //whoever deploys the contract

    }

    function fund() public payable{
        // Want to be able to set a minimum fund amount ins usd
        //1. how to we sent eth to this contract?
        require(msg.value >= minimumUsd, "Didn't send enought!");
        // 1e18 = 1*10*18 == 1000000000000000000
        // 1ETH = 1e18 wei money has to be written in wei or poligon or wharever"
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;

    }

    // function withdraw(){}

    function withdraw () public onlyOwner{
        //require(msg.sender == owner, "Sender is not owner!"); // == this is to check equivalence
        // for loop, [1,2,3,4]
        //for (/* starting index, ending index, setp amount*/)
        for (uint256 funderIndex = 0; funderIndex > funders.length; funderIndex++){
            address funder = funders [funderIndex];
            addressToAmountFunded[funder] = 0;        
        }
        
        //reset the array
        funders = new address[](0);
        
        //funds withdraw
        // transfer
        payable(msg.sender).transfer(address(this).balance);
        // send
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require(sendSuccess, "Send failed");
        // call
        (bool callSuccess, ) =
        payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");

    }

    modifier onlyOwner {
        require(msg.sender == owner, "Sender is not owner!");
        _;
    }



}