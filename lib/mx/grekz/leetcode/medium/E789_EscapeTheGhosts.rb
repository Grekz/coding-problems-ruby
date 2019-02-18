# @author grekz
class E789_EscapeTheGhosts
    # @param {Integer[][]} ghosts
    # @param {Integer[]} target
    # @return {Boolean}
    def escape_ghosts(ghosts, target)
        t0, t1 = target[0], target[1]
        dest = t0.abs + t1.abs
        ghosts.each { 
            |g| 
            cur = (g[0]-t0).abs + (g[1]-t1).abs
            return false if cur <= dest
        }
        return true
    end
end