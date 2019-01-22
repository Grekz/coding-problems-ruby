# @author grekz
class E746_MinCostClimbingStairs
    # @param {Integer[]} cost
    # @return {Integer}
    def min_cost_climbing_stairs(cost)
        n = cost.size - 2
        n.times{|i| cost[i+2] += [cost[i+1],cost[i]].min }
        [cost[n],cost[n+1]].min
    end
end