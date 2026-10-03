// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @notice Fixed-supply ERC-20 example for local development or testnet demos.
contract CreatorToken is ERC20 {
    error InvalidInitialSupply();

    uint256 public constant MAX_WHOLE_TOKEN_SUPPLY = 1_000_000_000;

    constructor(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 initialWholeTokenSupply
    ) ERC20(tokenName, tokenSymbol) {
        if (initialWholeTokenSupply == 0 || initialWholeTokenSupply > MAX_WHOLE_TOKEN_SUPPLY) {
            revert InvalidInitialSupply();
        }
        _mint(msg.sender, initialWholeTokenSupply * 10 ** decimals());
    }
}
