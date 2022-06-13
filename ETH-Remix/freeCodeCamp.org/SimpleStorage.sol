pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

contract SimpleStorage {
    uint256 favoriteNumber; // this wil get initialized to 0

    function store (uint256 _favoriteNumber) public{ 
        favoriteNumber = _favoriteNumber;
    }
  

}