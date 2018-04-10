# @author grekz
class E453_MinimumMovestoEqualArrayElements
    # @param {Integer[]} nums
    # @return {Integer}
    def min_moves(nums)
        m = nums.min
        res = 0
        nums.each{|x| res += x - m}
        res
    end
end