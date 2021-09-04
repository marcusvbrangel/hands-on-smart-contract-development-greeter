// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// OpenZeppelin / openzeppelin-contracts
// A library for secure smart contract development. Build on a solid foundation of community-vetted code.
// https://github.com/OpenZeppelin/openzeppelin-contracts

import "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {

    string private _greeting = "Hello, World!";

    address private _owner;

    constructor() {

        _owner = msg.sender;

    }

    // modifier onlyOwner() {
        
    //     require(msg.sender == _owner, "Ownable: caller is not the owner");
    //     _;

    // }

    function greet() external view returns(string memory) {

        return _greeting;

    }

    function setGreeting(string calldata greeting) external onlyOwner {

        _greeting = greeting;

    }

    // function owner() public view returns (address) {

    //     return _owner;

    // }

}

