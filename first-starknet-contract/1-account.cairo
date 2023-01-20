starknet new_account --account hello-world
// Account address: 0x03c1164c8d668e9d679054d57a040a36b01d0c576a55a970230a31382fcadda5
// Public key: 0x03f49f6abffa5e9acecc51dcfd19d48bd024efb39ce9a44e947e21b72c123b8d

starknet deploy_account --simulate
starknet deploy_account --estimate_fee
// The estimated fee is: 37136004926549 WEI (0.000037 ETH).
// Gas usage: 5063
// Gas price: 844196383 WEI

// send ETH from goerli faucet to deploy the contract: https://faucet.goerli.starknet.io/

starknet deploy_account --account hello-world
// Sending the transaction with max_fee: 0.000003 ETH (3093048550621 WEI).
// Sent deploy account contract transaction.

// Contract address: 0x03c1164c8d668e9d679054d57a040a36b01d0c576a55a970230a31382fcadda5
// Transaction hash: 0x72940c28406d3d03a334800330c14eb6f04520325c6674d9f30d7d5a153fd0d