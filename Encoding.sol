// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Encoding{
    function combineStrings() public pure returns (string memory){
        return string(abi.encodePacked("Hi"));
    }

    function encodeNumber() public pure returns (bytes memory){
        bytes memory number = abi.encode(1);
        return number;
    }
    function encodeString() public pure returns (bytes memory){
        bytes memory someString = abi.encode("some string");
        return someString;
    }
    function encodeStringPacked() public  pure returns (bytes memory) {
        bytes memory someString = abi.encodePacked("some string");
        return someString;
    }

    function encodeStringBytes() public  pure returns (bytes memory) {
        bytes memory someString = bytes("some string");
        return someString;
    }
    function decodeString() public pure returns(string memory){
        string memory someString = abi.decode(encodeString(), (string));
        return someString;
    }

    function multiEncode() public pure returns (bytes memory) {
        bytes memory someString = abi.encode("some string", "more string");
        return someString;
    }
    function multiDecode() public pure returns (string memory, string memory){
        (string memory someString,string memory someOtherString) = abi.decode(multiEncode(), (string,string));
        return (someString,someOtherString);
    }
    function multiEncodePacked() public pure returns (bytes memory) {
        bytes memory someString = abi.encodePacked("some string", "more string");
        return someString;
    }
    function multiDecodePacked() public pure returns (string memory, string memory){
        (string memory someString,string memory someOtherString) = abi.decode(multiEncodePacked(), (string,string));
        return (someString,someOtherString);
    }
    function recentWinner(address recentWinner) public {
        (bool success, ) = recentWinner.call{value: address(this).balance}("");
        require(success, "Transfer Failed");
    }
}