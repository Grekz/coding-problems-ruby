# @author grekz
class E0300_LongestIncreasingSubsequence
    # @param {Integer[]} nums
    # @return {Integer}
    def length_of_lis(nums)
        n = nums.size
        return 0 if ( n < 1 )
        dp, res = Array.new(n, 0), 1
        dp[0] = 1
        (1...n).each{ |i| 
            val = 0
            i.times{ |j| val = [val, dp[j]].max if ( nums[i] > nums[j] ) }
            dp[i] = val + 1
            res = [res, dp[i]].max    
        }
        return res
    end
end