// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token42 is ERC20, Ownable {
    bool public paused;

    constructor(uint256 initialSupply) ERC20("gmorel42", "GM42") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals()); // tranfert from 0x0000.. to adress of owner
        paused = false;
    }

    function mint(address to, uint256 amount) external onlyOwner whenNotPaused {
        _mint(to, amount);
    }

    // each owner can burn his own tokens
    function burn(uint256 amount) external whenNotPaused {
        _burn(msg.sender, amount);
    }

    // only owner can burn token of other wallets
    function burnFrom(address account, uint256 amount) external onlyOwner whenNotPaused {
        _burn(account, amount);
    }

    // Modifier
    modifier whenNotPaused() {
        require(!paused, "Token is paused");
        _;
    }

    function pause() external onlyOwner {
        paused = true;
    }

    function unpause() external onlyOwner {
        paused = false;
    }

    function _transfer(address from, address to, uint256 amount) internal override whenNotPaused {
        // super is to take original transfer of parent avoid recursivity
        super._transfer(from, to, amount);
    }
}
