class E136_SingleNumber
    # @param {Integer[]} nums
    # @return {Integer}
    def single_number(nums)
        nums.reduce(:^)
    end
end