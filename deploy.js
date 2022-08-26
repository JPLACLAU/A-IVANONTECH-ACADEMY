const ethers = require("ethers");
const fs = require("fs-extra");

async function main() {
  // compile them in our code
  // compile them separately
  // http://127.0.0.1:7545
  const provider = new ethers.providers.JsonRpcProvider(
    "HTTP://127.0.0.1:7545"
  );
  const wallet = new ethers.Wallet(
    "1f66f9d1ae82ed037a228409beb489c51d73d28d988ceff604dccafa0a2da475",
    provider
  );
  // pasting private key here its a huge nono, but this is ganache
  const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8");
  const binary = fs.readFileSync(
    "./SimpleStorage_sol_SimpleStorage.bin",
    "utf8"
  );
  const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
  console.log("Deploying, please wait...");
  const contract = await contractFactory.deploy(); //stop here, wait contract to deploy
  console.log(contract);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
