# @author grekz
class E496_NextGreaterElementI
    # @param {Integer[]} find_nums
    # @param {Integer[]} nums
    # @return {Integer[]}
    def next_greater_element(find_nums, nums)
        d = {}
        s = []
        d.default = -1
        nums.each{ 
            |x| 
            d[s.pop] = x while s.size > 0 and s[-1] < x
            s << x
        }
        
        find_nums.size.times {
            |i|
            find_nums[i] = d[find_nums[i]]
        }
        find_nums
    end
end