// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token42 is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Token42", "T42") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals()); // tranfert from 0x0000.. to adress of owner
    }
}

function mint(address to, uint256 amount) external onlyOwner {
    _mint(to, amount);
}

