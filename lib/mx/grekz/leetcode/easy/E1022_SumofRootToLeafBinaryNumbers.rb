# @author grekz
class E1022_SumofRootToLeafBinaryNumbers
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root
    # @return {Integer}
    def sum_root_to_leaf(root)
        return dfs(root, 0)
    end
    def dfs(n, c)
        return 0 if not n
        c = c * 2 + n.val
        return c if not n.left and not n.right
        return dfs(n.left, c) + dfs(n.right, c)
    end
end