class E112_PathSum
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
    # @return {Boolean}
    def has_path_sum(root, sum)
        return false if ( root == nil )
        sumOk = ( sum - root.val == 0 and root.left == nil and root.right == nil )
        remain = sum - root.val
        return (sumOk or has_path_sum(root.left, remain) or has_path_sum(root.right, remain))
    end
end