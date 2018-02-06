class E108_ConvertSortedArraytoBinarySearchTree
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
    def sorted_array_to_bst(nums)
        return nil if ( nums.size == 0 )
        def helper(nums, l, h)
            return nil if ( l > h )
            m = l + ( h - l ) / 2
            res = TreeNode.new(nums[m])
            res.left = helper(nums, l, m-1)
            res.right = helper(nums, m+1, h)
            return res
        end
        return helper(nums, 0, nums.length-1)    
    end
end