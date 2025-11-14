// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "contract.sol";
import "forge-std/Script.sol";

contract InteractToken42 is Script {
    function run() external {
        address tokenAddress = 0xc6F6dc6d9240eAF91cF3560d3F0068566902736c;
        Token42 token = Token42(tokenAddress);

        vm.startBroadcast();

        token.mint(0x8eD225F24b1200EFD2681D9df7bA04964967a6d6, 100 * 10**18);

        vm.stopBroadcast();
    }
}
