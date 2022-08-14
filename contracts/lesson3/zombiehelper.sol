pragma solidity >=0.5.0 <0.6.0;

import "./zombiefeeding.sol";

contract ZombieHleper is ZombieFeeding {

    modifier aboveLevel (uint32 _level, uint _zombieId) {
        require(zombies[_zombieId].level >= _level);
        _;
    }

    // Start here
    function changeName (uint _zombieId, string calldata _newName) external aboveLevel(2, _zombieId) {
        require(msg.sender == zombieToOwner[_zombieId]);
        zombies[_zombieId].name = _newName;
    }

    function changeDna (uint _zombieId, uint _newDna) external aboveLevel (20, _zombieId) {
        require(msg.sender == zombieToOwner[_zombieId]);
        zombies[_zombieId].dna = _newDna;

    }

}
