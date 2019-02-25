# @author grekz
class E983_MinimumCostForTickets
    # @param {Integer[]} days
    # @param {Integer[]} costs
    # @return {Integer}
    def mincost_tickets(days, costs)
        mint, n = 2147483647, days.last 
        cd = Array.new(n + 1, 0)
        days.each{ |x| cd[x] = mint }
        (1..n).each{ 
            |i| 
            if cd[i] == mint
                mc = cd[i - 1] + costs[0]
                mc = [mc, cd[goz(i, 7)] + costs[1], cd[goz(i, 30)] + costs[2]].min
                cd[i] = mc
            else
                cd[i] = cd[i - 1]
            end
        }
        return cd[n]
    end
    def goz(a, b)
        return 0 if a < b
        return a - b
    end
end