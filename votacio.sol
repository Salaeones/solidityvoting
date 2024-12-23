// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract voting {
    uint public yesVotes;
    uint public noVotes;
    address payable owner;

    constructor(){
        owner = payable(msg.sender);
    }
    
    function vote(uint yes) public payable {
        require ((msg.value > 1000000), "You need to pay");

        owner.transfer(msg.value);
        
        if (yes == 1){
            yesVotes++;
        } else {
            noVotes ++;
        }
    }
    receive() external payable {

    }
}