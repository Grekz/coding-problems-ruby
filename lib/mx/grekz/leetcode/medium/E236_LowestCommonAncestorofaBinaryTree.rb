# @author grekz
class E236_LowestCommonAncestorofaBinaryTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @param {TreeNode} p
    # @param {TreeNode} q
    # @return {TreeNode}
    def lowest_common_ancestor(root, p, q)
        return root if not root or root == p or root == q
        l = lowest_common_ancestor(root.left, p, q)
        r = lowest_common_ancestor(root.right, p, q)
        return root if l and r
        return l if l
        return r
    end
end