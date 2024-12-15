# Silent Failure in Low-Level Calls (Solidity)

This repository demonstrates a common error in Solidity: silent failure when using low-level calls like `call`, `delegatecall`, or `staticcall`. These functions do not throw an exception in case of an error, only returning a `false` status. This makes debugging and understanding why a transaction failed very difficult.

The `bug.sol` file contains a contract with a `withdraw` function that suffers from this problem.  The `bugSolution.sol` file shows how to properly handle potential errors in low-level calls.