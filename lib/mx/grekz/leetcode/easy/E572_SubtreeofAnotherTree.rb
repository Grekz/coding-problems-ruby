# @author grekz
class E572_SubtreeofAnotherTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} s
    # @param {TreeNode} t
    # @return {Boolean}
    def is_subtree(s, t)
        return false if not s
        return true if is_same(s,t) or is_subtree(s.left, t) or is_subtree(s.right, t)
        false
    end
    def is_same(a,b)
        return true if not a and not b
        return false if not a or not b
        return true if a.val == b.val and is_same(a.left, b.left) and is_same(a.right,b.right)
    end           
end