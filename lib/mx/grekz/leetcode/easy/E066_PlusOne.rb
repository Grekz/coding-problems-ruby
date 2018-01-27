class E066_PlusOne
    # @param {Integer[]} digits
    # @return {Integer[]}
    def plus_one(digits)
        le = digits.size
        ( le - 1 ).downto(0).each{
            |i|
            if ( digits[i] < 9 )
                digits[i] += 1
                return digits
            end
            digits[i] = 0
        }
        digits.unshift(1)
        return digits    
    end
end