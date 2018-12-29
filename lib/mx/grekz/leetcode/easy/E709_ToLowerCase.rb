# @author grekz
class E709_ToLowerCase
    # @param {String} str
    # @return {String}
    def to_lower_case(str)
        str.chars.map{ |x| x == x.upcase ? x.downcase : x }.reduce(:+)
    end
end