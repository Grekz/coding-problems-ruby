# @author grekz
class E932_BeautifulArray
    # @param {Integer} n
    # @return {Integer[]}
    def beautiful_array(n)
        res = [1]
        while res.size < n 
            tmp = []
            res.each { |x| tmp << x * 2 - 1 if x * 2 - 1 <= n }
            res.each { |x| tmp << x * 2 if x * 2 <= n }
            res = tmp
        end
        res
    end
end