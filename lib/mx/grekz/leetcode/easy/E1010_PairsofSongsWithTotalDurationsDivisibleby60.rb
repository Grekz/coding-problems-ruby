# @author grekz
class E1010_PairsofSongsWithTotalDurationsDivisibleby60
    # @param {Integer[]} time
    # @return {Integer}
    def num_pairs_divisible_by60(time)
        res, cnt = 0, Array.new(60, 0)
        time.each {
            |x|
            d = (60 - x % 60) % 60
            res += cnt[d]
            cnt[x % 60] += 1
        } 
        return res
    end
end