# @author grekz
class E128_LongestConsecutiveSequence
    # @param {Integer[]} nums
    # @return {Integer}
    def longest_consecutive(nums)
        s, res = nums.to_set, 0
        nums.each { 
            |x|
            if not s.include?(x - 1 )
                y = x + 1
                y+=1 while s.include?(y)
                res = [res, y - x].max
            end
        }
        res
    end
end