class E204_CountPrimes
    # @param {Integer} n
    # @return {Integer}
    def count_primes(n)
        return 0 if n < 3
        return 1 if n == 3
        tmp = [false] * (n+1)
        i = 2
        while i * i <= n
            if !tmp[i] 
                j = i * 2
                while j <= n 
                    tmp[j] = true
                    j += i
                end
            end
            i+=1
        end
        res = -2
        tmp[0...-1].each {
            |x|
            if !x 
                res += 1
            end
        }
        res
    end
end