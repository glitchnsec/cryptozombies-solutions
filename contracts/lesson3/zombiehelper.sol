pragma solidity >=0.5.0 <0.6.0;

import "./zombiefeeding.sol";

contract ZombieHleper is ZombieFeeding {

    modifier aboveLevel (uint32 _level, uint _zombieId) {
        require(zombies[_zombieId].level >= _level);
        _;
    }
}
