// SPDX- License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";


contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft

    function setUp() public {
        deployer= new DeployBasicNft();
        basicNft = deployer.run();

    }

    function testNameIsCorrect () public view  {
        string memory expectedNmae= "Dogie";
        string memory actualName= basicNft.name();

        assert(keccak256(abi.encodedPacked(expectedNmae)) == keccak256(abi.encodedPaced(actualName)));


    }
}