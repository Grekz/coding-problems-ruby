# https://leetcode.com/problems/two-sum/description/
# @author grekz
class E001_TwoSum
    # @param {Integer[]} nums
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(nums, target)
        map = {}
        nums.each_with_index{ |x, i|
            return [ map[ target - x ], i ] if map.key?(target - x)
            map[x] = i
        }
        [0,0]
    end
end