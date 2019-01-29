# @author grekz
class E055_JumpGame
    # @param {Integer[]} nums
    # @return {Boolean}
    def can_jump(nums)
        last = nums.size - 1
        last.downto(0).each{ |i| last = i if i + nums[i] >= last }
        last == 0
    end
end