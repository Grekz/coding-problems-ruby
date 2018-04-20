# @author grekz
class E575_DistributeCandies
    # @param {Integer[]} candies
    # @return {Integer}
    def distribute_candies(candies)
        n = candies.size / 2
        m = candies.uniq.size
        [n, m].min
    end
end