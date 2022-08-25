const ethers = require("ethers");
const fs = require("fs-extra");

async function main() {
  // compile them in our code
  // compile them separately
  // http://127.0.0.1:7545
  const provider = new ethers.providers.JsonRpcProvider("HTTP://127.0.0.1:7545");
  const wallet = new ethers.Wallet("1f66f9d1ae82ed037a228409beb489c51d73d28d988ceff604dccafa0a2da475", provider)
  // pasting private key here its a huge nono, but this is ganache

}

main() {
  .then (() => ProcessingInstruction.exit(0))
  .catch(error) => {
    console.error(error);
    ProcessingInstruction.exit(1);
  });
  