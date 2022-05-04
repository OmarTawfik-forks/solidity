::: index
! event
:::

# Events

Solidity events give an abstraction on top of the EVM\'s logging
functionality. Applications can subscribe and listen to these events
through the RPC interface of an Ethereum client.

Events are inheritable members of contracts. When you call them, they
cause the arguments to be stored in the transaction\'s log - a special
data structure in the blockchain. These logs are associated with the
address of the contract, are incorporated into the blockchain, and stay
there as long as a block is accessible (forever as of now, but this
might change with Serenity). The Log and its event data is not
accessible from within contracts (not even from the contract that
created them).

It is possible to request a Merkle proof for logs, so if an external
entity supplies a contract with such a proof, it can check that the log
actually exists inside the blockchain. You have to supply block headers
because the contract can only see the last 256 block hashes.

You can add the attribute `indexed` to up to three parameters which adds
them to a special data structure known as
`"topics" <abi_events>`{.interpreted-text role="ref"} instead of the
data part of the log. A topic can only hold a single word (32 bytes) so
if you use a `reference type
<reference-types>`{.interpreted-text role="ref"} for an indexed
argument, the Keccak-256 hash of the value is stored as a topic instead.

All parameters without the `indexed` attribute are
`ABI-encoded <ABI>`{.interpreted-text role="ref"} into the data part of
the log.

Topics allow you to search for events, for example when filtering a
sequence of blocks for certain events. You can also filter events by the
address of the contract that emitted the event.

For example, the code below uses the web3.js `subscribe("logs")`
[method](https://web3js.readthedocs.io/en/1.0/web3-eth-subscribe.html#subscribe-logs)
to filter logs that match a topic with a certain address value:

``` javascript
var options = {
    fromBlock: 0,
    address: web3.eth.defaultAccount,
    topics: ["0x0000000000000000000000000000000000000000000000000000000000000000", null, null]
};
web3.eth.subscribe('logs', options, function (error, result) {
    if (!error)
        console.log(result);
})
    .on("data", function (log) {
        console.log(log);
    })
    .on("changed", function (log) {
});
```

The hash of the signature of the event is one of the topics, except if
you declared the event with the `anonymous` specifier. This means that
it is not possible to filter for specific anonymous events by name, you
can only filter by the contract address. The advantage of anonymous
events is that they are cheaper to deploy and call. It also allows you
to declare four indexed arguments rather than three.

::: note
::: title
Note
:::

Since the transaction log only stores the event data and not the type,
you have to know the type of the event, including which parameter is
indexed and if the event is anonymous in order to correctly interpret
the data. In particular, it is possible to \"fake\" the signature of
another event using an anonymous event.
:::

``` solidity
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.21 <0.9.0;

contract ClientReceipt {
    event Deposit(
        address indexed _from,
        bytes32 indexed _id,
        uint _value
    );

    function deposit(bytes32 _id) public payable {
        // Events are emitted using `emit`, followed by
        // the name of the event and the arguments
        // (if any) in parentheses. Any such invocation
        // (even deeply nested) can be detected from
        // the JavaScript API by filtering for `Deposit`.
        emit Deposit(msg.sender, _id, msg.value);
    }
}
```

The use in the JavaScript API is as follows:

``` javascript
var abi = /* abi as generated by the compiler */;
var ClientReceipt = web3.eth.contract(abi);
var clientReceipt = ClientReceipt.at("0x1234...ab67" /* address */);

var depositEvent = clientReceipt.Deposit();

// watch for changes
depositEvent.watch(function(error, result){
    // result contains non-indexed arguments and topics
    // given to the `Deposit` call.
    if (!error)
        console.log(result);
});


// Or pass a callback to start watching immediately
var depositEvent = clientReceipt.Deposit(function(error, result) {
    if (!error)
        console.log(result);
});
```

The output of the above looks like the following (trimmed):

``` json
{
   "returnValues": {
       "_from": "0x1111…FFFFCCCC",
       "_id": "0x50…sd5adb20",
       "_value": "0x420042"
   },
   "raw": {
       "data": "0x7f…91385",
       "topics": ["0xfd4…b4ead7", "0x7f…1a91385"]
   }
}
```

## Additional Resources for Understanding Events

-   [Javascript
    documentation](https://github.com/ethereum/web3.js/blob/1.x/docs/web3-eth-contract.rst#events)
-   [Example usage of
    events](https://github.com/ethchange/smart-exchange/blob/master/lib/contracts/SmartExchange.sol)
-   [How to access them in
    js](https://github.com/ethchange/smart-exchange/blob/master/lib/exchange_transactions.js)