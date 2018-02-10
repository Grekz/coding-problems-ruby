class E121_BestTimetoBuyandSellStock
    # @param {Integer[]} prices
    # @return {Integer}
    def max_profit(prices)
        buy = 2147483647
        result = 0
        prices.each { 
            |stockPrice|
            if(stockPrice < buy)
                buy = stockPrice
            elsif ( result < stockPrice - buy )
                result = stockPrice - buy
            end
        }
        return result
    end
end