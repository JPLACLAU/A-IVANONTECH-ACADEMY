pragma solidity 0.8.13;
//SPDX-License-Identifier: UNLICENSED

contract SimpleStorage {
    uint256 public favoriteNumber; // this wil get initialized to 0

    function store (uint256 _favoriteNumber) public{ 
        favoriteNumber = _favoriteNumber;
    }
// view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
  

}