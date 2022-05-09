// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.13;

contract Control {
  function sendMoney() public payable {

  }
  function withdrawAllMoney(address payable _to) public {
    _to.transfer(address(this).balance);
  }
}
