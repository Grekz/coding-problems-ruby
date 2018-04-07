# @author grekz
class E441_ArrangingCoins
    # @param {Integer} n
    # @return {Integer}
    def arrange_coins(n)
        ( Math.sqrt( 1 + 8 * n ).to_i - 1 ) / 2
    end
end