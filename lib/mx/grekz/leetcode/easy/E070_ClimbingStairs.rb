class E070_ClimbingStairs
    # @param {Integer} n
    # @return {Integer}
    def climb_stairs(n)
        a = Math.sqrt(5)
        b = ( (1 + a) / 2)**( n + 1)
        c = ( (1 - a) / 2)**( n + 1)
        return ( 1/a * ( b - c ) ).to_i
    end
end