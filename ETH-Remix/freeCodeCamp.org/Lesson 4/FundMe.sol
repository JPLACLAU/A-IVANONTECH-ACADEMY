pragma solidity 0.8.8;
//SPDX-License-Identifier: UNLICENSED

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract FundMe {

    uint256 public minimumUsd = 50;

    function fund() public payable{
        // Want to be able to set a minimum fund amount ins usd
        //1. how to we sent eth to this contract?
        require(msg.value >= minimumUsd, "Didn't send enought!");
        // 1e18 = 1*10*18 == 10000000000000000000
        // 1ETH = 1e18 wei money has to be written in wei or poligon or wharever"

    }

    function getPrice() public {
        // ABI
        // Address goerli  0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e ethusd

    }

    function getConversionRate() public {

    }

}