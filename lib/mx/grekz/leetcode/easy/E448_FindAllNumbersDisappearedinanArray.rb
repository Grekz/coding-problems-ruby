# @author grekz
class E448_FindAllNumbersDisappearedinanArray
    # @param {Integer[]} nums
    # @return {Integer[]}
    def find_disappeared_numbers(nums)
        res = []
        nums.each{
            |x|
            v = x.abs - 1
            nums[v] = -nums[v].abs
        }
        nums.each_with_index{
            |x,i|
            res += [ i + 1 ] if x > 0
        }
        res
    end
end