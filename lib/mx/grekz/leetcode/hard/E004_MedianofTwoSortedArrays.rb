class E004_MedianofTwoSortedArrays
    MAX_INT = 2147483647
    MIN_INT = -2147483648
    # @param {Integer[]} nums1
    # @param {Integer[]} nums2
    # @return {Float}
    def find_median_sorted_arrays(n1, n2)
        h = a = n1.size
        b = n2.size
        return find_median_sorted_arrays(n2, n1) if a > b
        l = 0
        c = a + b + 1
        (
            m1 = ( l + h ) / 2
            m2 = c / 2 - m1
            mla = m1 != 0 ? n1[m1 - 1] : MIN_INT
            mlb = m2 != 0 ? n2[m2 - 1] : MIN_INT
            mra = m1 != a ? n1[m1] : MAX_INT
            mrb = m2 != b ? n2[m2] : MAX_INT
            if mla > mrb
                h = m1 - 1
            elsif mlb > mra
                l = m1 + 1
            else
                return (a + b) % 2 != 0 ? [mla,mlb].max.to_f : ( [mla,mlb].max + [mra,mrb].min ) / 2.0
            end
        ) while l <= h
        -1.0
    end
end