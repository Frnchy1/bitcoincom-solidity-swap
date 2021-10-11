// SPDX-License-Identifier: BCOM

pragma solidity ^0.8.9;

interface ISwapsERC20 {

    function name()
        external
        pure
        returns (string memory);

    function symbol()
        external
        pure
        returns (string memory);

    function decimals()
        external
        pure
        returns (uint8);

    function totalSupply()
        external
        view
        returns (uint256);

    function balanceOf(
        address owner
    )
        external
        view
        returns (uint256);

    function allowance(
        address owner,
        address spender
    )
        external
        view
        returns (uint256);

    function approve(
        address spender,
        uint256 value
    )
        external
        returns (bool);

    function transfer(
        address to,
        uint256 value
    )
        external
        returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    )
        external
        returns (bool);

    function DOMAIN_SEPARATOR()
        external
        view
        returns (bytes32);

    function PERMIT_TYPEHASH()
        external
        pure
        returns (bytes32);

    function nonces(
        address owner
    )
        external
        view
        returns (uint);

    function permit(
        address owner,
        address spender,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external;
}
