# @author grekz
class E654_MaximumBinaryTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val)
    #         @val = val
    #         @left, @right = nil, nil
    #     end
    # end
    
    # @param {Integer[]} nums
    # @return {TreeNode}
    def construct_maximum_binary_tree(nums)
        return nil if not nums or nums.size < 1
        i = nums.index nums.max
        res = TreeNode.new(nums[i])
        res.left = construct_maximum_binary_tree(nums[0...i])
        res.right = construct_maximum_binary_tree(nums[i+1..-1])
        res 
    end
end