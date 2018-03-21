# @author grekz
class E342_PowerofFour
    # @param {Integer} num
    # @return {Boolean}
    def is_power_of_four(num)
        return false if num < 1 
        num /= 4 while num % 4 == 0        
        return num == 1
    end
end