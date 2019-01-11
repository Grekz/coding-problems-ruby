# @author grekz
class E896_MonotonicArray
    # @param {Integer[]} a
    # @return {Boolean}
    def is_monotonic(a)
        aa, bb = true, true
        (a.size - 1).times { |i|
            aa = aa && a[i] <= a[i+1]     
            bb = bb && a[i] >= a[i+1] 
        }
        aa or bb
    end
end