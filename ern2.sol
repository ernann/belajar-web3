//SPDK-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
  struct Candidate {
    string name;
    unit voteCount;
  }

  Candidate[] public candidates;
  mapping(addres => bool) public hasVoted;
  construc() {
      candidates.push(Candidate("Calon A", 0));
      candidates.push(Candidate("Calon B", 0));
  }
 function vote(uint candidateIndex) public {
 require(!hasVoted[msg.sender], "Kamu sudah memilih!"); 

 require(candidateIndex < candidates.length, "Kandidat tidak ditemukan!");
 
 candidates[candidateIndex].voteCount += 1;
 hasVoted[msg.sender] = true;
 }

function getVotes(uint candidateIndex) public view returns (uint) {
require(candidateIndex < candidates.length, "Kandidat tidak ditemukan!");
return candidates[candidateIndex].voteCount;
}

function getCandidateName(uint candidateIndex) public view returns (string memory) {
require(candidateIndex < candidates.length, "Kandidat tidak ditemukan!");
return candidates[candidateIndex].name;
   }
}
