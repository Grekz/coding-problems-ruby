# @author grekz
class E357_CountNumberswithUniqueDigits
    # @param {Integer} n
    # @return {Integer}
    def count_numbers_with_unique_digits(n)
        
        if ( n == 0 ) then return 1 end
        if ( n == 1 ) then return 10 end
        if ( n == 2 ) then return 91 end
        res, t = 10,  9
        n = [n, 10].min
        (1..(n-1)).each{ |i|
            t *= 10 - i
            res += t
        }
        return res
    end
end