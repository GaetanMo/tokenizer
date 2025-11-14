// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "contract.sol";
import "forge-std/Script.sol";

contract InfoToken42 is Script {
    function run() external view {
        address tokenAddress = 0xc6F6dc6d9240eAF91cF3560d3F0068566902736c;
        Token42 token = Token42(tokenAddress);

		string memory tokenName = token.name();
        string memory tokenSymbol = token.symbol();
        bool isPaused = token.paused();

        address ownerAddress = token.owner();

        uint256 ownerBalance = token.balanceOf(ownerAddress);

        console.log("Token Name:", tokenName);
        console.log("Token Symbol:", tokenSymbol);
        console.log("Token paused:", isPaused);
        console.log("Owner address:", ownerAddress);
        console.log("Owner balance:", ownerBalance);
    }
}