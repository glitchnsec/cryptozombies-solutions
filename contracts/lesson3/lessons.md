Chapter 1
----
1. Using setter functions to set external dependencies such as contract addresses but we already knew this from solving damn vulnerable defi challenges
2. The `setKittyContractAddress` is external but does not check caller permissions. Anyone can change the address of the `KittyContract`

Chapter 2
---
1. Inheriting from openzeppelin's Owner smart contract to enable user access control
2. Cannot import libraries using incompatible versions of solidity contract

Chapter 3
---
1. A modifier is a special function that ends in `_;`
2. We need ways to update a contract's critical constructs but still maintain it's decentralized nature

Chapter 4
---
1. When using structs, use the smallest sizes you can for members as this helps to reduce gas spend

Chapter 5
---
1. Solidity has constructs for timings: now, seconds, minutes, days, years etc

Chapter 6
---
1. Timing functionality can be leverage for delay

Chapter 7
---
1. Functions may be called by any external actor. Review functions public and external functions and use internal where appropriate
2. For style conformity, prefix internal functions with `_`

Chapter 8
---
1. Modifiers can take arguments
2. Public variables can be accessed via inheritance

Chapter 9
---
1. `calldata` is somehow similar to `memory` but it's only available to external functions