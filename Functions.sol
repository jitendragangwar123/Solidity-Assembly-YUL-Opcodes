/*
pop(x) - discard the value x (useful for discarding return values of functions), eliminating it from the stack
gas() - return the remaining gas
address() - return the current contract address
caller() - return the address of the caller
origin() - return the address of the original transaction sender
callvalue() - return the value sent with the current call
selfbalance() - return the balance of the current contract
balance(a) - return the balance of the address a
create(v, p, n) - create a new contract with code memory[p…(p+n)) and send v wei and return the new address, or 0 on failure
create2(v, p, n, s) - create a new contract with code memory[p…(p+n)) at address keccak256(0xff . this . s . keccak256(memory[p…(p+n)))) and send v wei and return the new address, or 0 on failure
selfdestruct(a) - destroy the current contract and send its funds to address a
gasprice() - return the gas price of the current transaction
timestamp() - return the timestamp of the current block
number() - return the block number of the current block
*/
