// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {BasicNFT} from "../src/BasicNFT.sol";

contract Deploy is Script{
    function run() external returns(BasicNFT){
        vm.startBroadcast();
        BasicNFT basicNft = new BasicNFT();
        vm.stopBroadcast();
        return basicNft;
    }
}