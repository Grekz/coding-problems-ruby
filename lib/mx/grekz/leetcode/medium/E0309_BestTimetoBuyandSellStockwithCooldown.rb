# @author grekz
class E0309_BestTimetoBuyandSellStockwithCooldown
    # @param {Integer[]} prices
    # @return {Integer}
    def max_profit(prices)
        a,b,c = 0,0, -2147483648
        prices.each { |price| 
            d = b
            b = [b, c + price].max
            c = [c, a - price].max
            a = d    
        }
        return b
    end
end