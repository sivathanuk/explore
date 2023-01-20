starknet-compile first-contract.cairo \
    --output contract_compiled.json \
    --abi contract_abi.json

export STARKNET_NETWORK=alpha-goerli
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount

starknet declare --contract contract_compiled.json --account camp2
# Sending the transaction with max_fee: 0.000001 ETH (1488022611399 WEI).
# Declare transaction was sent.
# Contract class hash: 0x399998c787e0a063c3ac1d2abac084dcbe09954e3b156d53a8c43a02aa27d35
# Transaction hash: 0x44658fbab9e1458d5e76577ac5f6303c57df5066bfc2df82c9de71d5fc3c77f


starknet deploy --class_hash 0x399998c787e0a063c3ac1d2abac084dcbe09954e3b156d53a8c43a02aa27d35 --account camp2
# Sending the transaction with max_fee: 0.000002 ETH (1870212106638 WEI).
# Invoke transaction for contract deployment was sent.
# Contract address: 0x07e666389a5d70e1fde97e4086be1bed48cc150ff805a310390320974109b8c4
# Transaction hash: 0x498b63e6c4c630788ff1f7348b65fbcc30a6db96ee4129b34b12386d9226dae


export CONTRACT_ADDRESS="0x07e666389a5d70e1fde97e4086be1bed48cc150ff805a310390320974109b8c4"

starknet invoke \
    --address ${CONTRACT_ADDRESS} \
    --abi contract_abi.json \
    --function increase_balance \
    --inputs 1234 \
    --account camp2

# Sending the transaction with max_fee: 0.000003 ETH (3137654204303 WEI).
# Invoke transaction was sent.
# Contract address: 0x07e666389a5d70e1fde97e4086be1bed48cc150ff805a310390320974109b8c4
# Transaction hash: 0xf04d3009d1cfa54cba3240b6bbc7c109e9a7e09e7eade8aa9558de6572c37b

starknet tx_status --hash 0xf04d3009d1cfa54cba3240b6bbc7c109e9a7e09e7eade8aa9558de6572c37b

starknet call \
    --address ${CONTRACT_ADDRESS} \
    --abi contract_abi.json \
    --function get_balance