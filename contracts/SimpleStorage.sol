//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/access/ownable.sol";

contract SimpleStorage is ownable {
    uint s_favoriteNumber;

   constructor(uint _x) {
    s_favoriteNumber = _x
   }
   function setFavoriteNumber(uint _x) external onlyOwner {
    s_favoriteNumber = _x;
   }
   function getFavoriteNumber() external view returns(uint) {
    return s_favoriteNumber;
   }
}