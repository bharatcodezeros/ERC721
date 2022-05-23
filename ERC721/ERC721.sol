// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721{

    uint private tokenid = 1;

    constructor() ERC721("Simpletoken", "ST"){
        _mint(msg.sender,tokenid);
    }

    function Mintmynft (address to) public{
        tokenid++;
        _mint(to,tokenid);
    }
}
