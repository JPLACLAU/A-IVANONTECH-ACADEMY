console.log("welcome to index.js file baaaaaam");

//Conection to the TESTING gemini platform
const GeminiAPI = require("gemini-api").default;

//These are just TESTING NOT REAL MONEY NOR WALLET KEYS
var secret = "master-y9MQA0ZRcG1pSR9YflmS";
var key ="gr5HdL21okk2LP2foSQF6ADzrFP";


const restClient = new GeminiAPI({key, secret, sandbox:true});

restClient.newOrder({amount:10,price:100,side:"buy",symbols:"btcusd"});
.then(response => console.log(response));
