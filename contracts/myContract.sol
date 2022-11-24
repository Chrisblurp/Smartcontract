// // // SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract myContract{
    // map the address with the users
    mapping(address => uint)public balances;

// function to deposit ether
    function Deposit()public payable{
 balances[msg.sender] += msg.value;

// function to withdraw ether 
function Withdraw(uint _amount) public {
require (balances[msg.sender]>= _amount, “Insufficent Funds”);
balances[msg.sender]-=_amount;
(bool sent,) = msg.sender.call{value: _amount}(“sent”);
require(sent, “Failed to Complete”);


// Function to get the balance
function GetBal()public view returns(uint){
return(address(this).balance);
}