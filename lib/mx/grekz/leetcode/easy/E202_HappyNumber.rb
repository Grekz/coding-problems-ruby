class E202_HappyNumber
    # @param {Integer} n
    # @return {Boolean}
    def is_happy(n)
        return false if n < 1 or n == 4
        return true if [1,7,10,13,19,23].include?(n)
        res = 0
        while n > 0
            res += n%10 * (n%10) 
            n /= 10
        end
        is_happy(res)
    end
end