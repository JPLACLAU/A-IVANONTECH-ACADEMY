

//Conection to the TESTING gemini platform
const GeminiAPI = require("gemini-api").default;

//These are just TESTING NOT REAL MONEY NOR WALLET KEYS
var secret = "21XxTWfsbd2ufXCZAZC1rVT2X3rq";
var key = "account-iVHSkreYXowSK9kFCKts";

//This is a free api from crypto compare
const CCAPIKey = "7036d42f4098c4553208f2b9bbdefd6880a6e3f0cf88f694ad2287d3dd649d81";

const restClient = new GeminiAPI({key, secret, sandbox:true});

const CryptoCompareAPI = require("cryptocompare");
CryptoCompareAPI.setApikey(CCAPIKey);



restClient.newOrder({amount:10, price:100, side:"buy", symbol:"btcusd"})
.then(response => console.log(response))
.catch(error => console.log(error));
