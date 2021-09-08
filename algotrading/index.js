

//Conection to the TESTING gemini platform
const GeminiAPI = require("gemini-api").default;

//These are just TESTING NOT REAL MONEY NOR WALLET KEYS
var secret = "21XxTWfsbd2ufXCZAZC1rVT2X3rq";
var key ="account-iVHSkreYXowSK9kFCKts";


const restClient = new GeminiAPI({key, secret, sandbox:true});

restClient.newOrder({amount:10, price:100, side:"buy", symbol:"btcusd"})
.then(response => console.log(response))
.catch(error => console.log(error));
