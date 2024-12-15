```solidity
function withdraw(uint amount) public {
  require(balances[msg.sender] >= amount, "Insufficient balance");
  (bool success, bytes memory data) = msg.sender.call{value: amount}(new bytes(0));
  if (!success) {
    // Check the data returned for more specific error information.
    if (data.length > 0) {
      //Attempt to decode the error from the data.
      //Note that error decoding is not standardized, and requires knowledge of the recipient's implementation.
      revert(string(data));
    } else {
      revert("Transfer failed.");
    }
  }
  balances[msg.sender] -= amount;
}
```