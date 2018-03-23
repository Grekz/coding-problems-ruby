# @author grekz
class E345_ReverseVowelsofaString
    # @param {String} s
    # @return {String}
    def reverse_vowels(s)
        return s if s.size < 2
        vows = "aeiouAEIOU"
        i = 0
        j = s.size - 1
        st = s.split('')
        while i < j
            i+=1 while i < j and not vows.include?(st[i])
            j-=1 while i < j and not vows.include?(st[j])
            st[j], st[i] = st[i], st[j] if i < j 
            i+=1
            j-=1
        end
        return st.join
    end
end