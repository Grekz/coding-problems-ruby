# @author grekz
class E872_LeafSimilarTrees
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root1
    # @param {TreeNode} root2
    # @return {Boolean}
    def leaf_similar(root1, root2)
        dfs(root1) == dfs(root2)
    end
    def dfs(n)
        n ? (n.right == n.left ? String(n.val) : dfs(n.left) + dfs(n.right)) : ""
    end
end