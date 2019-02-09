# @author grekz
class E739_DailyTemperatures
    # @param {Integer[]} t
    # @return {Integer[]}
    def daily_temperatures(t)
        top, n = -1, t.size
        res, stack = [0] * n, [0] * n
        n.times{ 
            |i|
            while top >= 0 and t[i] > t[stack[top]] 
                idx = stack[top]
                top -= 1
                res[idx] = i - idx
            end
            top+=1
            stack[top] = i
        }
        return res
    end
end