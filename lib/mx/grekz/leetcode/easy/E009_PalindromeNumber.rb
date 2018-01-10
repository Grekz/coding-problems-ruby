class E009_PalindromeNumber
    # @param {Integer} x
    # @return {Boolean}
    def is_palindrome(x)
        return true if x == 0
        return false if x < 0 || x % 10 == 0
        return x.to_s.reverse == x.to_s
    end
end