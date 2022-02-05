//
//  TreeNode.swift
//  
//
//  Created by Doan Le Thieu on 05/02/2022.
//

/// Definition for a binary tree node (by LeetCode)
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

extension TreeNode: CustomStringConvertible {
    public var description: String {
        var s = ""
        if let left = left {
            s += "(\(left.description)) <- "
        }
        s += "\(val)"
        if let right = right {
            s += " -> (\(right.description))"
        }
        return s
    }
}
