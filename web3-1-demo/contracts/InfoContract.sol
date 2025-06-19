// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InfoContract {
    string public name;
    uint public age;

    // 定义事件
    event InfoUpdate(string name, uint age);

    // 初始化合约时设置姓名和年龄
    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;

        // 触发事件
        emit InfoUpdate(_name, _age);
    }

    // 设置姓名和年龄
    function setInfo(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }

    // 读取姓名和年龄
    function getInfo() public view returns(string memory, uint) {
        return (name, age);
    }

    function setHi() public pure returns(string memory) {
        return "Hi";
    }
}