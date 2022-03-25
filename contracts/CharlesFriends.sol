// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.1;

// We first import some OpenZeppelin Contracts.
// We need some util functions for strings.
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";
import {Base64} from "./libraries/Base64.sol";

contract CharlesFriends is ERC721URIStorage {
  // Magic given to us by OpenZeppelin to help us keep track of tokenIds.
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;


  // We need to pass the name of our NFTs token and its symbol.
  constructor() ERC721 ("CharlesFriends", "SCF") {
    console.log("This is my NFT contract. Woah!");
  }

  // A function our user will hit to get their NFT.
  function makeNFT() public {

    string memory Carl = "ipfs://QmcoTyJfs13oANFaE9Dfa53aShTaGKYe9GYGupXzpke1tZ";
    string memory Carl2 = "ipfs://QmPAWaMATEjBZYtDU2dBzXjQ75Etxqda5jFXwSErwHinAP";
    string memory Haili = "ipfs://QmYYcFYwvw6T1nSwCLZx5rRxhSTeY8fVRkjHVU5v6o1BfG";
    string memory James = "ipfs://QmfY5ef5pZyZU9kpEmYvurrHegkpDMNyrVgDyufjbMePqS";
    string memory Jayson = "ipfs://QmU6ptRBKfyuWmNVPJDb3PF4P9AeFrXwJxk2sgtWvbzPDM";

    _safeMint(msg.sender, _tokenIds.current());
    _setTokenURI(_tokenIds.current(), Carl);
    _tokenIds.increment();

    _safeMint(msg.sender, _tokenIds.current());
    _setTokenURI(_tokenIds.current(), Carl2);
    _tokenIds.increment();

    _safeMint(msg.sender, _tokenIds.current());
    _setTokenURI(_tokenIds.current(), Haili);
    _tokenIds.increment();
  
    _safeMint(msg.sender, _tokenIds.current());
    _setTokenURI(_tokenIds.current(), James);
    _tokenIds.increment();

    _safeMint(msg.sender, _tokenIds.current());
    _setTokenURI(_tokenIds.current(), Jayson);
    _tokenIds.increment();
  }
}