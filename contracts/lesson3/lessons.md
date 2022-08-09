Chapter 1
----
1. Using setter functions to set external dependencies such as contract addresses but we already knew this from solving damn vulnerable defi challenges
2. The `setKittyContractAddress` is external but does not check caller permissions. Anyone can change the address of the `KittyContract`