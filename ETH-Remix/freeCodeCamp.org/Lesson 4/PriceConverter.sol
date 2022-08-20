pragma solidity 0.8.8;
//SPDX-License-Identifier: UNLICENSED

// library

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


library PriceConverter {

        function getPrice() internal view returns(uint256) {
        // ABI
        // Address goerli  0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e ethusd
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        (,int256 price,,,) = priceFeed.latestRoundData();
        // ETH in terms of USD
        // 1800.00000000
        return uint256 (price * 1e10); // 1**10 == 10000000000

    }

        function getVersion() internal view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return priceFeed.version();
    }

    function getConversionRate(uint256 ethAmount) internal view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) /1e18;
        return ethAmountInUsd;

    }

}