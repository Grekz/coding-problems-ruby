# @author grekz
class E509_FibonacciNumber
    # @param {Integer} n
    # @return {Integer}
    def fib(n)
        if n < 2
            n
        else
            fib(n-1) + fib(n-2)
        end
    end
end