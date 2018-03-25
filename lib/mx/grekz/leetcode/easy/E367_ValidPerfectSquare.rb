# @author grekz
class E367_ValidPerfectSquare
    # @param {Integer} num
    # @return {Boolean}
    def is_perfect_square(num)
        r = num
        r = ( r + num / r ) / 2 while ( r * r > num )
        return r * r == num
    end
end