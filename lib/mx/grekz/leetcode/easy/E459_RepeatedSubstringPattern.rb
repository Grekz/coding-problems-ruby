# @author grekz
class E459_RepeatedSubstringPattern
    # @param {String} s
    # @return {Boolean}
    def repeated_substring_pattern(s)
        (s+s)[1..-2].include? s
    end
end