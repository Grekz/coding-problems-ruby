# @author grekz
class E561_ArrayPartitionI
    # @param {Integer[]} nums
    # @return {Integer}
    def array_pair_sum(nums)
        res = 0
        nums.sort.each_with_index{|x, i| res += i % 2 != 0 ? 0 : x }
        res
    end
end