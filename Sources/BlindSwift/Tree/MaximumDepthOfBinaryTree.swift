//
//  MaximumDepthOfBinaryTree.swift
//  
//
//  Created by Doan Le Thieu on 05/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space:
    // - Average case: O(log(n))
    // - Worst case: O(n)
    // n is number of nodes
    public func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }

        return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }
}
