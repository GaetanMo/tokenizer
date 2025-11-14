// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "contract.sol";
import "forge-std/Script.sol";

contract InteractToken42 is Script {
    function run() external {
        address tokenAddress = 0xc6F6dc6d9240eAF91cF3560d3F0068566902736c;
        Token42 token = Token42(tokenAddress);

        vm.startBroadcast();

        token.unpause();

        vm.stopBroadcast();
    }
}
