# @author grekz
class E365_WaterandJugProblem
    # @param {Integer} x
    # @param {Integer} y
    # @param {Integer} z
    # @return {Boolean}
    def can_measure_water(x, y, z)
        return false if ( x + y < z )
        return true if ( x == z or y == z or x + y == z )
        return z % gcd( x, y ) == 0
    end
    def gcd( a, b )
        return a if ( b == 0 )
        return gcd(b, a % b)
    end
end