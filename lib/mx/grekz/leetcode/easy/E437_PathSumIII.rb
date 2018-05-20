# @author grekz
class E437_PathSumIII
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @param {Integer} sum
    # @return {Integer}
    def path_sum(root, sum)
        return 0 if not root
        return doit(root, sum) + path_sum(root.left, sum) + path_sum(root.right, sum) 
    end
    
    def doit(n,s)
        return 0 if not n
        return ( n.val == s ? 1 : 0 ) + doit(n.left, s - n.val) + doit(n.right, s - n.val)
    end
end