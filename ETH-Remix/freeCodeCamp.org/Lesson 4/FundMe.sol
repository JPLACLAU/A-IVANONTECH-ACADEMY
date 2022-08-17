pragma solidity 0.8.16;
//SPDX-License-Identifier: UNLICENSED

contract FundMe {
    function fund() public payable{
        // Want to be able to set a minimum fund amount ins usd
        //1. how to we sent eth to this contract?
        require(msg.value >1e18, "Didn't send enought");
        // 1e18 = 1*10*18 == 10000000000000000000
        // 1ETH = 1e18 wei money has to be written in wei or poligon or wharever"

    }

}