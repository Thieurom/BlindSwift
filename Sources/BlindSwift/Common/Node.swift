//
//  Node.swift
//
//
//  Created by Doan Thieu on 21/4/24.
//

/// Definition for a Node (by LeetCode)
public class Node {
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
