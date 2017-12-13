class E013_RomantoInteger
    # @param {String} s
    # @return {Integer}
    def roman_to_int(s)
        t = []
        res = 0
        val = {
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000
        }
        s.chars.each{
            |x|
            t << val[x]
        }
        t[0..-2].each_with_index{
            |x,i|
            res += ( x < t[i+1] ? -1 : 1 ) * x
        }
        res + t[-1]
    end
end