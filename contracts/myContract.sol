// // // SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;
contract MyContract {
   uint256 balance;
   address payable public admin;
 constructor() {
       admin = payable(msg.sender);
       balance = 0;
       updateBalance();
 
  
}
// linking the address and balance 
   function updateBalance() internal {
       balance += msg.value;
   }

//    function to withdraw the ether
   function withdraw(uint256 amount)  public{
       require(msg.sender == admin, "Withdrawing is possible only for an admin");
       require(amount <= balance, "Withdraw can not be proceeded, because of limited balance");   
       balance = balance - amount;
  
 }

//  funtion to deposit ether

   function deposit(uint256 amount) public returns (uint256) { return balance = balance + amount; }

//    function to check the deposit

   function checkDepositBalance() public view returns (uint256) { return balance; }
}