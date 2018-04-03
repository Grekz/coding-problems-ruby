# @author grekz
class E404_SumofLeftLeaves
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
    def sum_of_left_leaves(root)
        return 0 if (root == nil || ( root.left == nil && root.right == nil ) ) 
            
        ans = 0
        ans += root.left.val if(root.left != nil && root.left.left == nil && root.left.right == nil) 
        ans + sum_of_left_leaves(root.right) + sum_of_left_leaves(root.left)
    end
end