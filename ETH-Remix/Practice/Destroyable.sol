pragma solidity 0.7.5;
//SPDX-License-Identifier: UNLICENSED

import "./ownable.sol";


contract Destroyable is Ownable {

  function destroy() public onlyOwner {
    address payable receiver = msg.sender;
    selfdestruct(receiver);
  }
}