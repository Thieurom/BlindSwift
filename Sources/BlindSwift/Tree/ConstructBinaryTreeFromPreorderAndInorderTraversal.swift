//
//  ConstructBinaryTreeFromPreorderAndInorderTraversal.swift
//  
//
//  Created by Doan Le Thieu on 20/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(n)
    public func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard !preorder.isEmpty else {
            return nil
        }

        let rootValue = preorder[0]
        let root = TreeNode(rootValue)
        let inorderIndex = inorder.firstIndex(of: rootValue)!

        root.left = buildTree(
            inorderIndex == 0 ? [] : Array(preorder[1..<inorderIndex+1]),
            inorderIndex == 0 ? [] : Array(inorder[0..<inorderIndex])
        )

        root.right = buildTree(
            inorderIndex == inorder.count - 1 ? [] : Array(preorder[inorderIndex+1..<preorder.count]),
            inorderIndex == inorder.count - 1 ? [] : Array(inorder[inorderIndex+1..<inorder.count])
        )

        return root
    }
}
