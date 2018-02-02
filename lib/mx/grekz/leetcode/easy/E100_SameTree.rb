class E100_SameTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} p
    # @param {TreeNode} q
    # @return {Boolean}
    def is_same_tree(p, q)
        return true if(p == nil and q == nil)
        return false if(p == nil or q == nil)
        return ( is_same_tree(p.right, q.right) and is_same_tree(p.left, q.left) ) if(p.val == q.val)
        return false
    end
end