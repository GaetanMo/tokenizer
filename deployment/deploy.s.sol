// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "contract.sol"; //contract
import "forge-std/Script.sol";

contract DeployToken42 is Script {
    function run() external {
        uint256 initialSupply = 1000000;

        vm.startBroadcast();

        Token42 token = new Token42(initialSupply);

        vm.stopBroadcast();

        console.log("Token deployed at:", address(token));
    }
}
