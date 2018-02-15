class E167_TwoSumIIInputarrayissorted
    # @param {Integer[]} numbers
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(numbers, target)
        i = 0
        j = numbers.size - 1
        while i < j
            sum = numbers[j] + numbers[i]
            if (sum < target) 
                i+=1
            elsif(sum > target) 
                j-=1
            else 
                return [i+1,j+1]
            end
        end
        return [-1,-1]
    end
end