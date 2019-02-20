# @author grekz
class E672_BulbSwitcherII
    # @param {Integer} n
    # @param {Integer} m
    # @return {Integer}
    def flip_lights(n, m)
        return 1 if(m == 0)
        return 2 if(n == 1)
        return 3 if(n == 2 and m == 1)
        return 4 if(n == 2 or m == 1)
        return 7 if(m == 2)
        return 8
    end
end