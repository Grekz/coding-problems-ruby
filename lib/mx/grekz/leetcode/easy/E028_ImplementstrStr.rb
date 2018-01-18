class E028_ImplementstrStr
    # @param {String} haystack
    # @param {String} needle
    # @return {Integer}
    def str_str(haystack, needle)
        return str_str_helper(haystack,needle,0)
    end
    def str_str_helper(haystack, needle, idx)
        nLen = needle.size
        return -1 if ( haystack.size-idx < nLen )
        return idx if ( haystack[idx...(idx+nLen)] == needle )
        return str_str_helper(haystack, needle, idx+1)
    end
end