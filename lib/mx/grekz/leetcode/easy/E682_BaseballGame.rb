# @author grekz
class E682_BaseballGame
    # @param {String[]} ops
    # @return {Integer}
    def cal_points(ops)
        res, val = 0, 0
        rnds = []
        ops.each{
            |x|
            l = rnds.size-1
            if x == "C"
                val = -rnds[l]
                rnds.pop
            else
                if x == "+"
                    val = rnds[l] + rnds[ l- 1]
                elsif x == "D"
                    val = 2 * rnds[l]
                else
                    val = x.to_i
                end
                rnds.push(val)
            end
            res += val
        }
        res
    end
end