# @author grekz
class E0042_TrappingRainWater
    # @param {Integer[]} height
    # @return {Integer}
    def trap(height)
        l, r, ml, mr, res = 0, height.size - 1, 0, 0, 0
        while ( l < r ) 
            if ( height[r] > height[l] ) 
                if ( ml < height[l] ) 
                    ml = height[l]
                else
                    res += ml - height[l]
                end
                l+=1
            else
                if ( mr < height[r] ) 
                    mr = height[r]
                else
                    res += mr - height[r]
                end
                r-=1
            end
        end
        return res
    end
end