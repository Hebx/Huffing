// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import {BaseTestV1, HorseStore} from "./BaseTestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is BaseTestV1 {
    string public constant HORSE_STORE_LOCATION = "v1/HorseStore"; //no src & no extension

    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_LOCATION));
    }
}
