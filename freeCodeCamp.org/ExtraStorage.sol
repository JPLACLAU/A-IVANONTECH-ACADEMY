pragma solidity 0.8.7;
//SPDX-License-Identifier: UNLICENSED
//.

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
