// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {FooLib} from "src/FooLib.sol";

struct Bar {
    uint8 x;
}

contract Foo {
    mapping(uint256 => Bar) bars;
    function checker(uint256 id) external {
        Bar memory b = bars[id];
        FooLib.check(b);
    }

    function checker2() external {
        FooLib.check2(this);
    }
}


