// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.6.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @custom:security-contact support@novalon.org
contract Novalon is ERC20, ERC20Permit {
    constructor(address recipient)
        ERC20("Novalon", "NVLN")
        ERC20Permit("Novalon")
    {
        _mint(recipient, 500000000 * 10 ** decimals());
    }
}
