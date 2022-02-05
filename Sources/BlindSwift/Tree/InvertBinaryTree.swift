//
//  Invert Binary Tree.swift
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
    public func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }

        let left = root?.left
        root?.left = invertTree(root?.right)
        root?.right = invertTree(left)
        return root
    }
}
