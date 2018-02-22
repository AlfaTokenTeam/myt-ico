pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MYT is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MYT(address _owner)  UpgradeableToken(_owner) {
    name = "MYT";
    symbol = "MYT";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}