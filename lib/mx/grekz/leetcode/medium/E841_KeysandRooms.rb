# @author grekz
class E841_KeysandRooms
    # @param {Integer[][]} rooms
    # @return {Boolean}
    def can_visit_all_rooms(rooms)
        seen = Array.new(rooms.size, false)
        stack = [0]
        seen[0] = true
        while not stack.empty? 
            cur = stack.pop
            rooms[cur].each{
                |x|
                if not seen[x] 
                    seen[x] = true
                    stack << x
                end
            }
        end
        not seen.any? { |x| !x }
    end
end