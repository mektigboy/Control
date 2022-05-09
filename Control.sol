// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.13;

contract Control {
  address owner;
  bool public paused;

  constructor() public {
    owner = msg.sender;
  }

  function sendMoney() public payable {

  }
  function setPaused(bool _paused) public {
    require(msg.sender == owner, "You are not the owner, bro.");
    paused = _paused;
  }
  function withdrawAllMoney(address payable _to) public {
    require(msg.sender == owner, "You are not the owner, bro.");
    require(!paused, "Contract is paused.");
    _to.transfer(address(this).balance);
  }
}
