# @author grekz
class E779_KthSymbolinGrammar
    # @param {Integer} n
    # @param {Integer} k
    # @return {Integer}
    def kth_grammar(_n, _k)
        n, k = 0, _k - 1
        while k > 0
            k &= k - 1
            n += 1
        end
        return n & 1
    end
end