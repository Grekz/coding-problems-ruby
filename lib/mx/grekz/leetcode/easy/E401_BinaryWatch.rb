# @author grekz
class E401_BinaryWatch
    # @param {Integer} num
    # @return {String[]}
    def read_binary_watch(num)
        res = []
        12.times{ |i| 60.times { |j| res+= ["%d:%02d" % [i,j]] if i.to_s(2).count("1") + j.to_s(2).count("1") == num } }
        res
    end
end