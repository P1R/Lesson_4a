# Usage and Testing Basics

forge basic commands 
```bash
 forge init lets_forge # Creates a project named lets_forge
 forge build # builds all the 
 forge test --match-test test_SetValue # Just run a defined test
 forge script script/Counter.s.sol # run a script
 forge install OpenZeppelin/openzeppelin-contracts # install a submodule (OpenZeppelin)
 forge remove OpenZeppelin/openzeppelin-contracts # uninstall a submodule
```

For the Following examples in scripts and deployments we use Ganache
## Deploy a contract into Ganache
> Note, --legacy is used since fork is not yet supported in Ganache
```Solidity
forge create A --legacy --contracts src/A.sol --private-key <0x....pkey> --rpc-url http://127.0.0.1:7545
```

## Running a Script that deploys
> note it reads private key from .env which contains DEPLOY_KEY=0x....pkey
```Solidity
forge script script/A.s.sol --rpc-url HTTP://127.0.0.1:7545 --broadcast --verify -vvvv
```

## Cast

ToDo

## Debugging in Foundry

ToDo

## Forking

ToDo

## Cheat Codes

ToDo

## References

1. Encode Club Expert Solidity Lesson 4a.
