# @author grekz
class E961_NRepeatedElementinSize2NArray
    # @param {Integer[]} a
    # @return {Integer}
    def repeated_n_times(a)
        c = {}
        a.each{ |x| 
            return x if c[x]
            c[x] = true
        }
        -1
    end
end