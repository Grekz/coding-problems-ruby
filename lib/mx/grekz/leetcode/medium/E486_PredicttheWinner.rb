# @author grekz
class E486_PredicttheWinner
    # @param {Integer[]} nums
    # @return {Boolean}
    def predict_the_winner(nums)
        n = nums.size
        dp = Array.new(n, 0)
        n.downto(0).each{
            |i|
            ((i + 1)...n).each {
                |j|
                a = nums[i] - dp[j]
                b = nums[j] - dp[j - 1]
                dp[j] = [a, b].max
            }    
        }       
        return dp[n - 1] >= 0
    end
end