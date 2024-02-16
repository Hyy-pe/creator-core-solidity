// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../contracts/ERC1155Creator.sol";

contract DeployERC1155CreatorImplementation is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        new ERC1155Creator("Nouns Mints", "NOUN");
        vm.stopBroadcast();
    }
}
