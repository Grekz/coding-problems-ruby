class E125_ValidPalindrome
    # @param {String} s
    # @return {Boolean}
    def is_palindrome(s)
        def is_alpha(chr)
            return (chr =~ /[[:alpha:][:digit:]]/)
        end
        i = 0
        j = s.size-1
        s.downcase!
        while i < j
            i +=1 while i < j and not is_alpha(s[i])
            j -=1 while i < j and not is_alpha(s[j])
            return false if s[j] != s[i]
            i+=1
            j-=1
        end
        return true
    end
end