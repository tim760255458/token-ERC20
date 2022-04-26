// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    /// 转移事件
    event Transfer(address indexed from, address indexed to, uint256 value);
    /// 授权事件
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    /// 查询总量
    function totalSupply() external view returns (uint256);

    /// 查询余额
    function balanceOf(address account) external view returns (uint256);

    /// 向 to 转账 amount
    function transfer(address to, uint256 amount) external returns (bool);

    /// owner 允许 spender 提取的金额
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    /// 允许 spender 提取 amount
    function approve(address spender, uint256 amount) external returns (bool);

    // from 向 to 转账 amount
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}
