# @author grekz
class E412_FizzBuzz
    # @param {Integer} n
    # @return {String[]}
    def fizz_buzz(n)
        (1..n).map{
            |i|
            if (i % 3 == 0 and i % 5 == 0)
                "FizzBuzz"
            elsif (i % 3 == 0)
                "Fizz"
            elsif (i % 5 == 0)
                "Buzz"
            else
                i.to_s
            end
        }
    end
end