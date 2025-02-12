// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract GlobalVariables{
    function globalVars() external view returns (address, uint, uint) {
       address sender = msg.sender;
       uint timeStamp =  block.timestamp;
       uint blockNum = block.number;
       return (sender, timeStamp, blockNum);
    }
}
