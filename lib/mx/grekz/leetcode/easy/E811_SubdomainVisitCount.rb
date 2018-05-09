# @author grekz
class E811_SubdomainVisitCount
    # @param {String[]} cpdomains
    # @return {String[]}
    def subdomain_visits(cpdomains)
        map = {}
        map.default = 0
        cpdomains.each{
            |dom|
            cur = dom.split
            count = cur[0].to_i
            sd = cur[1]
            map[sd] = map[sd] + count
            idx = sd.index('.')
            while idx
                sd  = sd[idx+1..-1]
                map[sd] = map[sd] + count
                idx = sd.index('.')
            end
        }
        res = []
        map.each{|k,v| res << v.to_s + ' ' + k }
        res
    end
end