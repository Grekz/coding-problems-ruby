class E088_MergeSortedArray
    # @param {Integer[]} nums1
    # @param {Integer} m
    # @param {Integer[]} nums2
    # @param {Integer} n
    # @return {Void} Do not return anything, modify nums1 in-place instead.
    def merge(nums1, m, nums2, n)
        return if ( n == 0 ) 
        i = m -1 
        j = n - 1
        ind = n + m  - 1
        while(ind >= 0 )
            if(i < 0) 
                nums1[ind] = nums2[j]
                j -= 1
            elsif(j < 0)
                nums1[ind] = nums1[i]
                i-=1
            elsif(nums1[i] > nums2[j])
                nums1[ind] = nums1[i]
                i-=1
            else 
                nums1[ind] = nums2[j]
                j-=1
            end
            ind -=1
        end
    end
end