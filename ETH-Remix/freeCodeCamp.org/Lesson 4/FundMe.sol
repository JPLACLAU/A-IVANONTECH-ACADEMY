pragma solidity 0.8.8;
//SPDX-License-Identifier: UNLICENSED

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
        // Want to be able to set a minimum fund amount ins usd
        //1. how to we sent eth to this contract?
        require(msg.value >= minimumUsd, "Didn't send enought!");
        // 1e18 = 1*10*18 == 1000000000000000000
        // 1ETH = 1e18 wei money has to be written in wei or poligon or wharever"
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;

    }



}