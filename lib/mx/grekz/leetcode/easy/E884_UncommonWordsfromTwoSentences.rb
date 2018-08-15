# @author grekz
class E884_UncommonWordsfromTwoSentences
    # @param {String} a
    # @param {String} b
    # @return {String[]}
    def uncommon_from_sentences(a, b)
        tmp = a + " " + b
        tmp = tmp.split
        cnt = Hash.new(0)
        tmp.each { |x| cnt[x] += 1 }
        res = []
        cnt.each{ |e,i| res << e if i == 1 }
        res
    end
end