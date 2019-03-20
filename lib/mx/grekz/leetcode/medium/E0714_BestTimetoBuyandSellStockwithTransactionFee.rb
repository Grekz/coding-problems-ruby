# @author grekz
class E0714_BestTimetoBuyandSellStockwithTransactionFee
    # @param {Integer[]} prices
    # @param {Integer} fee
    # @return {Integer}
    def max_profit(prices, fee)
        a, b, c = 0, -2147483648, 0
        prices.each{
            |x|
            c = a
            a = [a, b + x ].max
            b = [b, c - fee - x].max    
        }
        return a
    end
end