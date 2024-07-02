// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {Deploy} from "../script/Deploy.s.sol";
import {BasicNFT} from "../src/BasicNFT.sol";

contract BasicNFTTest is Test{
    Deploy public deployer;
    BasicNFT public basicNFT;

    function setup() public{
        deployer = new Deploy();
        basicNFT = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNFT.name();
        // array of bytes
        // for(loop through the array) compare the elements
        // assert(expectedName == actualName);
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));

    }
}