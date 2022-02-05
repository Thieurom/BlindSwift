//
//  SameTree.swift
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
    public func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }

        if p?.val != q?.val {
            return false
        }

        // At this point, both `p` and `q` are non-nil
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
