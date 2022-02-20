//
//  ValidateBinarySearchTree.swift
//  
//
//  Created by Doan Le Thieu on 20/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n) (on balanced tree)
    // There're up to O(lgn) recursive calls on the stack
    public func isValidBST1(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }

        // Pass down the min, max
        return _validateTree1(root, min: nil, max: nil)
    }

    fileprivate func _validateTree1(_ root: TreeNode, min: Int?, max: Int?) -> Bool {
        if let min = min, root.val <= min {
            return false
        }

        if let max = max, root.val >= max {
            return false
        }

        if let left = root.left,
           !_validateTree1(left, min: min, max: root.val) {
            return false
        }

        if let right = root.right,
           !_validateTree1(right, min: root.val, max: max) {
            return false
        }

        return true
    }
}

extension Solution {
    // Time: O(n)
    // Space: O(n) (on balanced tree)
    // There're up to O(lgn) recursive calls on the stack
    public func isValidBST2(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }

        return _validateTree2(root).isValid
    }

    // Propagate up the min, max
    fileprivate func _validateTree2(_ root: TreeNode) -> (isValid: Bool, min: Int, max: Int) {
        if root.left == nil && root.right == nil {
            return (true, root.val, root.val)
        }

        var isValid = true
        var minValue = root.val
        var maxValue = root.val

        if let left = root.left {
            let validation = _validateTree2(left)

            if !validation.isValid || (validation.max > root.val) {
                isValid = false
            }
            minValue = min(minValue, validation.min)
            maxValue = max(maxValue, validation.max)
        }

        if let right = root.right {
            let validation = _validateTree2(right)

            if !validation.isValid || (validation.min < root.val) {
                isValid = false
            }
            minValue = min(minValue, validation.min)
            maxValue = max(maxValue, validation.max)
        }

        return (isValid, minValue, maxValue)
    }
}
