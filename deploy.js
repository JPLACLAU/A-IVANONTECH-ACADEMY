const ethers = require("ethers");
const fs = require("fs-extra");
require("dotenv").config();

async function main() {
  // compile them in our code
  // compile them separately
  // http://127.0.0.1:7545
  const provider = new ethers.providers.JsonRpcProvider(process.env.RPC_URL);
  const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider);
  // const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider);
  //const encryptedJson = fs.readFileSync("./.encryptedKey.json", "utf8");
  //let wallet = new ethers.Wallet.fromEncryptedJsonSync(
  //  encryptedJson,
  //  process.env.PRIVATE_KEY_PASSWORD
  //);
  //wallet = await wallet.connect(provider);

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
  await contract.deployTransaction.wait(1);
  console.log(`Contract Address: ${contract.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
