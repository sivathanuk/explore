starknet-compile 2-first-contract.cairo \
    --output contract_compiled.json \
    --abi contract_abi.json

export STARKNET_NETWORK=alpha-goerli
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount

starknet declare --contract contract_compiled.json --account hello-world
# Sending the transaction with max_fee: 0.000001 ETH (1488022611399 WEI).
# Declare transaction was sent.
# Contract class hash: 0x399998c787e0a063c3ac1d2abac084dcbe09954e3b156d53a8c43a02aa27d35
# Transaction hash: 0x261364b4a838c5cbbb233b691bb8abd2b3f9e52753008d572ef217f88820f5a

starknet deploy --class_hash 0x399998c787e0a063c3ac1d2abac084dcbe09954e3b156d53a8c43a02aa27d35 --account hello-world
# Sending the transaction with max_fee: 0.000002 ETH (1870212106638 WEI).
# Invoke transaction for contract deployment was sent.
# Contract address: 0x03780b843cb5616d49688d73213fa1cda7ebfac17d06c45dfbc7967b8962f993
# Transaction hash: 0x69ad7ca403d245963795248e18ade48fd17f9e820830ae8ca59f1fae6a7647e


export CONTRACT_ADDRESS="0x03780b843cb5616d49688d73213fa1cda7ebfac17d06c45dfbc7967b8962f993"

starknet invoke \
    --address ${CONTRACT_ADDRESS} \
    --abi contract_abi.json \
    --function increase_balance \
    --inputs 1729 \
    --account hello-world

# Sending the transaction with max_fee: 0.000002 ETH (1972572367538 WEI).
# Invoke transaction was sent.
# Contract address: 0x03780b843cb5616d49688d73213fa1cda7ebfac17d06c45dfbc7967b8962f993
# Transaction hash: 0x554634dd3788e219b3d1ec2f224f5ead5d55ee288fdb8092ba80ef6fcbd1190
# starknet tx_status --hash 0xf04d3009d1cfa54cba3240b6bbc7c109e9a7e09e7eade8aa9558de6572c37b

starknet call \
    --address ${CONTRACT_ADDRESS} \
    --abi contract_abi.json \
    --function get_balance