pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED


contract TimeoftheGames {

    uint openingTime = 1648436401;

    modifier onlyWhileOpen {
        require(block.timestamp >= openingTime);
        _;      
    }

    constructor (){
        
    }
}