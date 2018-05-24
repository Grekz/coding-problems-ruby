# @author grekz
class E230_KthSmallestElementinaBST
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
    # @return {Integer}
    def kth_smallest(root, k)
        count = countit(root.left) + 1
        return root.val if count == k
        return kth_smallest(root.right, k - count) if k > count
        return kth_smallest(root.left, k)
    end
    
    def countit(n)
        n ? 1 + countit(n.left) + countit(n.right) : 0
    end
end