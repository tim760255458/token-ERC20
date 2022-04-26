// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC20.sol";

interface IERC20Metadata is IERC20 {
    /// 名称
    function name() external view returns (string memory);

    /// 简称
    function symbol() external view returns (string memory);

    /// 小数位
    function decimals() external view returns (uint8);
}
