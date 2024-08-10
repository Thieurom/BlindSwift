//
//  BinaryTreeMaximumPathSum.swift
//
//
//  Created by Doan Thieu on 10/8/24.
//

extension Solution {

    // Time: O(n)
    // Space: O(n)
    public func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSum = Int.min
        pathSum(root, &maxSum)
        return maxSum
    }

    @discardableResult
    private func pathSum(_ node: TreeNode?, _ sum: inout Int) -> Int {
        guard let node else { return 0 }

        let leftSum = max(pathSum(node.left, &sum), 0)
        let rightSum = max(pathSum(node.right, &sum), 0)
        let newSum = node.val + leftSum + rightSum
        sum = max(sum, newSum)

        return node.val + max(leftSum, rightSum)
    }
}
