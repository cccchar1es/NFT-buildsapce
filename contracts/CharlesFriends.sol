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
  constructor() ERC721 ("Charles", "CNFT") {
    console.log("This is my NFT contract. Woah!");
  }

  // A function our user will hit to get their NFT.
  function makeNFT() public {

    string memory CarlUri = "ipfs://QmX63fHJ5y8GmniiErBuoKYtcmrXsNmXnSzfYKZJxwv3fP";
    string memory test = "ipfs://QmUVvDGSVmXDquYgXk9em5XGUkWp3cpzE4FiV4zJcYWMUe";
    
    // Get the current tokenId, this starts at 0.
    uint256 newItemId = _tokenIds.current();

    // Actually mint the NFT to the sender using msg.sender.
    _safeMint(msg.sender, newItemId);

    // NFT for Carl.
    _setTokenURI(newItemId, test);
    console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
    _tokenIds.increment();
  }
}