class E217_ContainsDuplicate
    # @param {Integer[]} nums
    # @return {Boolean}
    def contains_duplicate(nums)
        nums.size != Set.new(nums).size
    end
end