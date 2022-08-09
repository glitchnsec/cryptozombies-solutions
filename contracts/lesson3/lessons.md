Chapter 1
----
1. Using setter functions to set external dependencies such as contract addresses but we already knew this from solving damn vulnerable defi challenges
2. The `setKittyContractAddress` is external but does not check caller permissions. Anyone can change the address of the `KittyContract`

Chapter 2
---
1. Inheriting from openzeppelin's Owner smart contract to enable user access control
2. Cannot import libraries using incompatible versions of solidity contract