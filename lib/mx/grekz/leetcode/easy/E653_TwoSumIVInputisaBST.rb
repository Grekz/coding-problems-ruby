# @author grekz
class E653_TwoSumIVInputisaBST
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end

    # @param {TreeNode} root
    # @param {Integer} k
    # @return {Boolean}
    def find_target(root, k)
        s = Set.new
        dfs(root, k, s)
    end
    def dfs(node, k, s)
        return false if not node
        return true if s.include?(k - node.val)
        s.add(node.val)
        dfs(node.left, k, s) or dfs(node.right, k, s)
    end

end