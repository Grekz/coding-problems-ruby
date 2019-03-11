# @author grekz
class E979_DistributeCoinsinBinaryTree
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
    $ans = 0
    def distribute_coins(root)
        $ans = 0
        dfs(root)
        return $ans
    end
    def dfs(n)
        return 0 if not n
        l, r = dfs(n.left), dfs(n.right)
        $ans += l.abs + r.abs
        return l + r + n.val - 1
    end
end