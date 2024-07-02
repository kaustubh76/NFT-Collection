// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-std/src/DevOpsTools.sol";
import {BasicNFT} from "../src/BasicNFT.sol";

contract MintBasicNFT is Script{
    function run() external {
        address mostRecentDeployed = DevOpsTools.getMostRecentDeployment("BasicNFT", blockchainid);
        mintNFTonContract(mostRecentDeployed);

    }

    function mintNFTonContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNFT(contractAddress).mintNFT("https://ipfs
    }

}