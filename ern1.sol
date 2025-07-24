// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessegeBox{
  string public messege;

  construct(string memory initialMessage){
    message = initialMessage;
    }

  function updateMessage(string memory newMessage) public {
    message = newMessage;
    }
  }
