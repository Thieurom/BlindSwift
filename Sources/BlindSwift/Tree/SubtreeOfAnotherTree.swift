//
//  SubtreeOfAnotherTree.swift
//  
//
//  Created by Doan Le Thieu on 20/02/2022.
//

extension Solution {
    // DFS
    // Time: O(m*n)
    // Space: O(nlgn)
    public func isSubtree1(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root,
              let subRoot = subRoot else {
                  return false
              }

        
        if isSameTree(root, subRoot) {
            return true
        }

        return isSubtree1(root.left, subRoot)
        || isSubtree1(root.right, subRoot)
    }

    // BFS
    // Time: O(m*n)
    // Space: O(nlgn)
    public func isSubtree2(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }

        var nodes = [root]
        while !nodes.isEmpty {
            let node = nodes.removeFirst()
            if isSameTree(node, subRoot) {
                return true
            }

            if let left = node.left {
                nodes.append(left)
            }

            if let right = node.right {
                nodes.append(right)
            }
        }

        return false
    }
}
