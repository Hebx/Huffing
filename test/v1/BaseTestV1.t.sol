// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {HorseStore} from "../../src/v1/Sol/HorseStore.sol";

abstract contract BaseTestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function test_readNumberOfHorses() public {
        uint256 numberOfHorses = horseStore.readNumberOfHorses();
        assertEq(numberOfHorses, 0);
    }
}
