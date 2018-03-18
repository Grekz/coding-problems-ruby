# @author grekz
class E258_AddDigits
    # @param {Integer} num
    # @return {Integer}
    def add_digits(num)
        return num if ( num < 10 )
        return 1 + ( num - 1 ) % 9
    end
end