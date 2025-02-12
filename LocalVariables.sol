// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract LocalVariables{
    uint public i;
    bool public b;
    address public myAddr;

    function foo() external {
        uint x = 123;
        bool f = false;
        //more code
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddr = address(1);
    }
}