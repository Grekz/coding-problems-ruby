# @author grekz
class E322_CoinChange
    # @param {Integer[]} coins
    # @param {Integer} amount
    # @return {Integer}
    def coin_change(coins, amount)
        m, n = amount + 1, coins.size
        dp = Array.new(m, m)
        dp[0] = 0
        (1...m).each{ 
            |i|
            coins.each{ 
                |c|
                dp[i] = [dp[i], dp[i - c] + 1].min if c <= i
            }
        }
        return dp[amount] if amount >= dp[amount]
        return -1
    end
end