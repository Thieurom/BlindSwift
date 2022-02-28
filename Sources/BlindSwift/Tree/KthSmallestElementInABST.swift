//
//  KthSmallestElementInABST.swift
//  
//
//  Created by Doan Le Thieu on 28/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n) for recursion stack
    public func kthSmallest1(_ root: TreeNode?, _ k: Int) -> Int {
        return _kthSmallest1(root, k).value ?? -1
    }

    fileprivate func _kthSmallest1(_ root: TreeNode?, _ k: Int) -> (count: Int, value: Int?) {
        if root == nil {
            return (0, nil)
        }

        var count = 0
        var value: Int? = nil

        // Search left
        let leftSearch = _kthSmallest1(root?.left, k)
        if let lValue = leftSearch.value {
            value = lValue
        }

        count += leftSearch.count

        // Root
        count += 1
        if value == nil && count == k {
            value = root?.val
        }

        // Search right
        let rightSearch = _kthSmallest1(root?.right, k - count)
        if value == nil, let rValue = rightSearch.value {
            value = rValue
        }

        count += rightSearch.count

        return (count, value)
    }
}

extension Solution {
    // Time: O(n)
    // Space: O(n)
    public func kthSmallest2(_ root: TreeNode?, _ k: Int) -> Int {
        var root = root
        var stack = [TreeNode]()
        var count = k

        while count > 0 {
            while root != nil {
                stack.append(root!)
                root = root?.left
            }

            guard !stack.isEmpty else {
                return -1
            }

            root = stack.removeLast()
            count -= 1

            if count == 0 {
                return root?.val ?? -1
            }

            root = root?.right
        }

        return -1
    }
}
