class E226_InvertBinaryTree
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
    def invert_tree(root)
        return root if root == nil
        tmp = invert_tree(root.left)
        root.left = invert_tree(root.right)
        root.right = tmp
        root
    end
end