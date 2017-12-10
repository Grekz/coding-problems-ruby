class E011_ContainerWithMostWater
    # @param {Integer[]} height
    # @return {Integer}
    def max_area(height)
        len = height.size
        return 0 if len < 2
        l = res = 0
        h = len - 1
        (
            res = [res, [height[l], height[h]].min * (h-l)].max
            if height[l] < height[h]
                l += 1
            else
                h -= 1
            end
        ) while l < h
        res
    end
end