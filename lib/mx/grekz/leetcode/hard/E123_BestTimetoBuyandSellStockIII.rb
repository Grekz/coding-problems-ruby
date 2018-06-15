# @author grekz
class E123_BestTimetoBuyandSellStockIII
    # @param {Integer[]} prices
    # @return {Integer}
    def max_profit(prices)
        profitA, buyA = 0, -2147483648
        profitB, buyB = 0, buyA
        prices.each_with_index{
            |cur,i|
            profitB = [profitB, buyB + cur].max if i > 2
            buyB = [buyB, profitA - cur].max if i > 1 
            profitA = [profitA, buyA + cur].max
            buyA = [buyA,-cur].max
        }
        return [profitA, profitB].max
    end
end