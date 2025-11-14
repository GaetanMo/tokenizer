// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token42 is ERC20Pausable, Ownable {

    constructor(uint256 initialSupply) ERC20("gmorel42", "GM42") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals()); // tranfert from 0x0000.. to adress of owner
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(!paused(), "Token is paused");
        _mint(to, amount);
    }

    // each owner can burn his own tokens
    function burn(uint256 amount) external {
        require(!paused(), "Token is paused");
        _burn(msg.sender, amount);
    }

    // only owner can burn token of other wallets
    function burnFrom(address account, uint256 amount) external onlyOwner {
        require(!paused(), "Token is paused");
        _burn(account, amount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }
}
