# @author grekz
class E326_PowerofThree
    # @param {Integer} n
    # @return {Boolean}
    def is_power_of_three(n)
        n > 0 &&  1162261467 % n == 0
    end
end