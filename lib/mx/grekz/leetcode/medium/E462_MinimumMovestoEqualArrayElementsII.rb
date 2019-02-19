# @author grekz
class E462_MinimumMovestoEqualArrayElementsII
    # @param {Integer[]} nums
    # @return {Integer}
    def min_moves2(nums)
        nums.sort!
        i, res, j = 0, 0, nums.size - 1
        while i < j
            res += nums[j] - nums[i]
            j-=1
            i+=1
        end
        return res
    end
end