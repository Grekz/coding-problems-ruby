# https://leetcode.com/problems/judge-route-circle/description/
# @author grekz
class E657_JudgeRouteCircle
  # @param {String} moves
  # @return {Boolean}
  def judge_circle(moves)
      return false if moves.length % 2 != 0
      a = b = 0
      moves.chars.each{ |x|
          case x
              when 'U' 
                  a+=1
              when 'D' 
                  a-=1
              when 'L' 
                  b+=1
              else 
                  b-=1
          end
      }
      a == 0 && b == 0
  end
end