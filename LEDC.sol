pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/math/SafeMath.sol";

contract LEDC is SafeERC20 {
    using SafeMath for uint256;

    string public name = "Linear Exchange Data Chain";
    string public symbol = "LEDC";
    uint8 public decimals = 18;
    uint256 public totalSupply = 8000000000 * 10 ** 18;

    mapping(address => uint256) public balanceOf;
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address payable to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value);
        require(to != address(0));
        balanceOf[msg.sender] = balanceOf[msg.sender].sub(value);
        balanceOf[to] = balanceOf[to].add(value);
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address payable to, uint256 value) public returns (bool) {
        require(balanceOf[from] >= value);
        require(allowance[from][msg.sender] >= value);
        balanceOf[from] = balanceOf[from].sub(value);
        allowance[from][msg.sender] = allowance[from][msg.sender].sub(value);
        balanceOf[to] = balanceOf[to].add(value);
        emit Transfer(from, to, value);
        return true;
    }

    function approve(address payable spender, uint256 value) public returns (bool) {
        require(spender != address(0));
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        return allowance[owner][spender];
    }
}
