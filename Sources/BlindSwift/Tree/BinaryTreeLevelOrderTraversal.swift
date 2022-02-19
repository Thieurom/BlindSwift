//
//  BinaryTreeLevelOrderTraversal.swift
//  
//
//  Created by Doan Le Thieu on 19/02/2022.
//

extension Solution {
    // Recursive
    // Time: O(n)
    // Space: O(n)
    // Recursion depth can grow upto O(n)
    public func levelOrder1(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var values = [[Int]]()
        values.append([root.val])

        let lefts = levelOrder1(root.left)
        let rights = levelOrder1(root.right)

        var i = 0
        while i < max(lefts.count, rights.count) {
            let leftValues = i < lefts.count ? lefts[i] : []
            let rightValues = i < rights.count ? rights[i]: []
            values.append(leftValues + rightValues)
            i += 1
        }

        return values
    }
}

extension Solution {
    // Iterative
    // Time: O(n)
    // Space: O(n)
    public func levelOrder2(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var values = [[Int]]()
        var nodes = [root]

        while !nodes.isEmpty {
            let currentLevelValues: [Int] = nodes.map { $0.val }
            values.append(currentLevelValues)

            var nextLevelNodes = [TreeNode]()
            for node in nodes {
                if let left = node.left {
                    nextLevelNodes.append(left)
                }
                if let right = node.right {
                    nextLevelNodes.append(right)
                }
            }

            nodes = nextLevelNodes
        }

        return values
    }
}
