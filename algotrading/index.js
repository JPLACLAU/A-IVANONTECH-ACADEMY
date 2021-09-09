global.fetch = require("node-fetch");


//Conection to the TESTING gemini platform
const GeminiAPI = require("gemini-api").default;
//These are just TESTING NOT REAL MONEY NOR WALLET KEYS
const secret = "account-iVHSkreYXowSK9kFCKts";
const key = "21XxTWfsbd2ufXCZAZC1rVT2X3rq";
//This is a free api from crypto compare
const CrypAPIKey = "7036d42f4098c4553208f2b9bbdefd6880a6e3f0cf88f694ad2287d3dd649d81";
const restClient = new GeminiAPI({key, secret, sandbox:true});

const CryptoCompareAPI = require("cryptocompare");
CryptoCompareAPI.setApiKey(CrypAPIKey);


restClient.newOrder({amount:10, price:100, side:"buy", symbol:"BTCUSDT"})
.then(response => console.log(response))
.catch(error => console.log(error));


CryptoCompareAPI.coinList()
.then(coinList => {
  console.log(coinList)
})
