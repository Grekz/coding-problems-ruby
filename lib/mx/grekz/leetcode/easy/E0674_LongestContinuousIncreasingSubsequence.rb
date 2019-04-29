# @author grekz
class E0674_LongestContinuousIncreasingSubsequence
    # @param {Integer[]} nums
    # @return {Integer}
    def find_length_of_lcis(nums)
        res, count, n = 0, 0, nums.size
        n.times{ |i|
            if i < 1 or nums[i-1] < nums[i]
                count += 1
                res = [res, count].max
            else
                count = 1
            end
        }
        return res
    end
end