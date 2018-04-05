# @author grekz
class E414_ThirdMaximumNumber
    # @param {Integer[]} nums
    # @return {Integer}
    def third_max(nums)
        return nums.max if nums.size < 3
        m1 = m2 = m3 = nums.min
        nums.each{
            |x|
            if ( x > m1 ) 
                m3 = m2
                m2 = m1
                m1 = x
            elsif ( x > m2 and x < m1 ) 
                m3 = m2
                m2 = x
            elsif ( x > m3 and x < m2 )
                m3 = x
            end
        }
        m1 > m2 && m2 > m3 ? m3 : m1
    end
end