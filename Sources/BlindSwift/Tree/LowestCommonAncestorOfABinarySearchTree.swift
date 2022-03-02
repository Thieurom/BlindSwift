//
//  LowestCommonAncestorOfABinarySearchTree.swift
//  
//
//  Created by Doan Le Thieu on 02/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n) for recursion stack
    public func lowestCommonAncestor1(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let p = p, let q = q else {
            return nil
        }

        if p.val < root.val && q.val < root.val {
            return lowestCommonAncestor1(root.left, p, q)
        }

        if p.val > root.val && q.val > root.val {
            return lowestCommonAncestor1(root.right, p, q)
        }

        return root
    }
}

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func lowestCommonAncestor2(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p = p, let q = q else {
            return nil
        }

        var root = root
        while root != nil {
            if p.val < root!.val && q.val < root!.val {
                root = root?.left
            } else if p.val > root!.val && q.val > root!.val {
                root = root?.right
            } else {
                break
            }
        }

        return root
    }
}
