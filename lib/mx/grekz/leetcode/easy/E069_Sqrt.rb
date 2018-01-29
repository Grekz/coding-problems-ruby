class E069_Sqrt
    # @param {Integer} x
    # @return {Integer}
    def my_sqrt(x)
        r = x
        r = ( r + x / r ) / 2 while ( r * r > x )
        r
    end
end