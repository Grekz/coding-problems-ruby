class E350_IntersectionofTwoArraysII
    # @param {Integer[]} nums1
    # @param {Integer[]} nums2
    # @return {Integer[]}
    def intersect(nums1, nums2)
        hash = nums1.reduce(Hash.new(0)) {|ha, num| ha[num] += 1; ha }
        nums2.reduce([]) do |ar, num|
            if hash[num] > 0
                hash[num] -= 1
                ar << num
            else
                ar
            end
        end
    end
end