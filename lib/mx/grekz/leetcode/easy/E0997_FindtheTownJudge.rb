# @author grekz
class E0997_FindtheTownJudge
    # @param {Integer} n
    # @param {Integer[][]} trust
    # @return {Integer}
    def find_judge(n, trust)
        c = Array.new(n + 1, 0)
        trust.each {
            |x|    
            c[x[0]] -= 1
            c[x[1]] += 1
        }
        (1..(n)).each{ |i| return i if c[i] == n - 1 }
        return -1
    end
end