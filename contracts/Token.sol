//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

// We import this library to be able to use console.log
import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor(uint256 initialSupply) public ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply);
    }
}