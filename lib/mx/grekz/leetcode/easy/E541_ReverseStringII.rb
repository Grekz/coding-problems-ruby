# @author grekz
class E541_ReverseStringII
    # @param {String} s
    # @param {Integer} k
    # @return {String}
    def reverse_str(s, k)
        cArr = s.split("")
        n = cArr.size
        (0..n).step(2 * k) do |i|
            ii = i 
            j =  i + k - 1 > n - 1 ? n - 1 : i + k - 1
            while ii < j 
                tmp = cArr[ii]
                cArr[ii] = cArr[j]
                ii+=1
                cArr[j] = tmp
                j-=1 
            end
        end
        cArr.join
    end
end