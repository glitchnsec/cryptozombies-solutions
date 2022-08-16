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

Chapter 10
---
1. `View` functions don't cost gas when externally called `external view`. This is because no transaction needs to be created and data can be read from the local Ethereum node
2. When a view function is called internally by a non view function, it is costs gas because that function will create a transaction

Chapter 11
---
1. Writes to `storage` are expensive because they persist acorss nodes. Use `memory` whenever possible especially in `external view` where usage is at no cost to users

Chapter 12
---
1. Expanding on Chapter 11. In some cases, a naive implementation would involve using `storage` variables to hold data for future manipulations. However, if the data held needs updating (write operations) this could become really expensive in gas fees. Hence it is cheaper to leverage forloops to rebuild data when it is needed than store it for future operations.