// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.13;

contract Control {
  address owner;

  constructor() public {
    owner = msg.sender;
  }

  function sendMoney() public payable {

  }
  function withdrawAllMoney(address payable _to) public {
    require(msg.sender == owner, "You are not the owner, bro.");
    _to.transfer(address(this).balance);
  }
}
