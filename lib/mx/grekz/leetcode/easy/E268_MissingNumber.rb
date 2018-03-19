# @author grekz
class E268_MissingNumber
    # @param {Integer[]} nums
    # @return {Integer}
    def missing_number(nums)
        res = 0
        nums.each_with_index{ | e, i | res ^= i ^ e }
        res ^ nums.size
    end
end