class E058_LengthofLastWord
    # @param {String} s
    # @return {Integer}
    def length_of_last_word(s)
        s = s.strip
        a = s.size
        b = s.rindex(' ')
        b = b.nil? ? -1 : b
        return a - b - 1
    end
end