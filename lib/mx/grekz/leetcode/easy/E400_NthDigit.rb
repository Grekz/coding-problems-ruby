# @author grekz
class E400_NthDigit
    # @param {Integer} n
    # @return {Integer}
    def find_nth_digit(n)
        return n if ( n < 10 )
        n -= 1
        digitInNumber = 1
        rangeNumber = 1
        while (n / 9 / rangeNumber / digitInNumber >= 1)
            n -= 9 * rangeNumber * digitInNumber
            digitInNumber += 1
            rangeNumber *= 10
        end
        res = (rangeNumber + n/digitInNumber).to_s
        return res[n%digitInNumber].to_i
    end
end