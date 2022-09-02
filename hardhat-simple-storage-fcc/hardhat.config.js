require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */

//const GOERLI_RPC_URL = process.env.GOERLI_RPC_URL;
//const PRIVATE_KEY = process.env.PRIVATE_KEY;
const { GOERLI_RPC_URL, PRIVATE_KEY } = process.env;

module.exports = {
    // defaultNetwork: "hardhat", // this fake hardhat network with rpcurl and pkey
    networks: {
        hardhat: {},
        goerli: {
            url: GOERLI_RPC_URL,
            accounts: [PRIVATE_KEY],
            chainId: 5,
        },
    },

    solidity: "0.8.7",
};
