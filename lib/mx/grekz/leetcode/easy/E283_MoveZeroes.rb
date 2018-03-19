# @author grekz
class E283_MoveZeroes
    # @param {Integer[]} nums
    # @return {Void} Do not return anything, modify nums in-place instead.
    def move_zeroes(nums)
        pointer = 0
        nums.each_with_index{
            |e,i|
            if(e != 0)
                tmp = e
                nums[i] = nums[pointer]
                nums[pointer] = tmp
                pointer += 1
            end
        }
    end
end