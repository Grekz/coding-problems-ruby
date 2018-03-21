# @author grekz
class E290_WordPattern
    # @param {String} pattern
    # @param {String} str
    # @return {Boolean}
    def word_pattern(pattern, str)
        words = str.split(" ")
        return false if (words.size != pattern.size)
        dic = {}
        words.each_with_index{
            |e,i|
            char = pattern[i]
            if dic.key?(char)
                return false if dic[char] != e
            elsif dic.has_value?(e)
                return false
            else
                dic[char] = e
            end
        }
        return true
    end
end