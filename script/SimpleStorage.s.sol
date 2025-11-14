// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract CounterScript is Script {
    SimpleStorage public simpleStorage;

    function setUp() public {}

    function run() external returns (SimpleStorage) {
        vm.startBroadcast();

        simpleStorage = new SimpleStorage();

        vm.stopBroadcast();

        return simpleStorage;
    }
}
