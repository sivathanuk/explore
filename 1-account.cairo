starknet new_account --account camp2
// Account address: 0x02141f77e3ce7a7ed12f6b15593430b2f0a78a8a1ae00235c7d9b25b7fbc52c1
// Public key: 0x062ffab9e15e8019d3150ea1cbb7d1ca9ceaa6875520e85c208154e9fdfcf18a

starknet deploy_account --simulate
starknet deploy_account --estimate_fee
// The estimated fee is: 37136004926549 WEI (0.000037 ETH).
// Gas usage: 5063
// Gas price: 7037466754 WEI

// send ETH from goerli faucet to deploy the contract: https://faucet.goerli.starknet.io/

starknet deploy_account --account camp2
// Sending the transaction with max_fee: 0.000018 ETH (18043235483668 WEI).
// Sent deploy account contract transaction.

// Contract address: 0x02141f77e3ce7a7ed12f6b15593430b2f0a78a8a1ae00235c7d9b25b7fbc52c1
// Transaction hash: 0x5663fbc9bfdb80698f0ba2c6114954cd8628e9dfcc00db7fe5a97d469c761f1
