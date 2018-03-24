# @author grekz
class E349_IntersectionofTwoArrays
    # @param {Integer[]} nums1
    # @param {Integer[]} nums2
    # @return {Integer[]}
    def intersection(nums1, nums2)
        return [] if not nums1 or not nums2
        a = nums1.to_set
        b = nums2.to_set
        (a & b).to_a
    end
end