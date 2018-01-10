module E014_LongestCommonPrefix
    # @param {String[]} strs
    # @return {String}
    def longest_common_prefix(strs)
        return "" if strs.size < 1
        res = strs.shift
        strs.each{ |x| res = res[0...-1] while !x.start_with?(res) }
        res
    end
end