# @author grekz
class E814_BinaryTreePruning
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {TreeNode} root
    # @return {TreeNode}
    def prune_tree(root)
        return root if root == nil
        root.left = prune_tree(root.left)
        root.right = prune_tree(root.right)
        root = nil if not root.left and not root.right and root.val == 0
        root
    end
end