// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LEDToken {
    string public constant name = "LED Token";
    string public constant symbol = "LED";
    uint8 public constant decimals = 18;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(string => bool)) public exerciseCompleted;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event ExerciseCompleted(address indexed user, string exercise, uint256 reward);
    
    constructor(uint256 initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
    }
    
    function transfer(address to, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
    
    function completeExercise(string memory exercise) public returns (bool success) {
        address user = msg.sender;
        uint256 reward;
        if (exerciseCompleted[user][exercise] == false) {
            if (keccak256(bytes(exercise)) == keccak256(bytes("run"))) {
                reward = 10;
            } else if (keccak256(bytes(exercise)) == keccak256(bytes("yoga"))) {
                reward = 20;
            } else if (keccak256(bytes(exercise)) == keccak256(bytes("walk"))) {
                reward = 20;
            } else if (keccak256(bytes(exercise)) == keccak256(bytes("swim"))) {
                reward = 10;
            } else if (keccak256(bytes(exercise)) == keccak256(bytes("sleep"))) {
                reward = 5;
            } else if (keccak256(bytes(exercise)) == keccak256(bytes("gym"))) {
                reward = 20;
            } else {
                revert("Invalid exercise");
            }
            exerciseCompleted[user][exercise] = true;
            balanceOf[user] += reward;
            emit ExerciseCompleted(user, exercise, reward);
            return true;
        } else {
            revert("Exercise already completed");
        }
    }
}
