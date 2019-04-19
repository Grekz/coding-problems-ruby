# @author grekz
class E1026_MaximumDifferenceBetweenNodeandAncestor
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
    def max_ancestor_diff(root)
        dfs(root, root.val, root.val)
    end
    def dfs( node, max, min ) 
        return max - min if not node
        max = [max, node.val].max
        min = [min, node.val].min
        maxL = dfs(node.left, max, min)
        maxR = dfs(node.right, max, min)
        return [maxL, maxR].max
    end
end