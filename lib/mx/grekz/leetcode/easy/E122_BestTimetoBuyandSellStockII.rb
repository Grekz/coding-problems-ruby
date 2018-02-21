class E122_BestTimetoBuyandSellStockII
    # @param {Integer[]} prices
    # @return {Integer}
    def max_profit(prices)
        res = 0
        (prices.size - 1).times{
            |i|
            res += prices[i+1] - prices[i] if prices[i] < prices[i+1]
        }
        res
    end
end