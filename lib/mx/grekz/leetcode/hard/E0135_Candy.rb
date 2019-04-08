# @author grekz
class E0135_Candy
    # @param {Integer[]} ratings
    # @return {Integer}
    def candy(ratings)
        n = ratings.size
        tmp = Array.new(n, 1)
        (1...n).each{ |i|
            tmp[i] = tmp[i - 1] + 1 if ratings[i] > ratings[i-1]    
        }
        res = tmp[n - 1]
        (n-2).downto(0).each{ |i|
            tmp[i] = [tmp[i], tmp[i+1] + 1].max if ratings[i] > ratings[i+1]
            res += tmp[i]
        }
        return res
    end
end