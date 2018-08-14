# @author grekz
class E860_LemonadeChange
    # @param {Integer[]} bills
    # @return {Boolean}
    def lemonade_change(bills)
        f = t = 0
        for x in bills 
            if x == 5
                f += 1
            elsif x == 10
                t += 1
                f -= 1
            elsif t > 0 
                t -= 1
                f -= 1
            else
                f -= 3
            end
            return false if f < 0 
        end
        true
    end
end