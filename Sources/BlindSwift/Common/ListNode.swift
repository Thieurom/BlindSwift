//
//  ListNode.swift
//  
//
//  Created by Doan Le Thieu on 02/02/2022.
//

/// Definition for singly-linked list (by LeetCode)
public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(val)"
        }
        return "\(val) -> " + String(describing: next)
    }
}

extension ListNode {
    public static func from(_ values: [Int]) -> ListNode? {
        guard !values.isEmpty else { return nil }

        let node = ListNode(values.first!)
        var next: ListNode? = node

        for value in values.dropFirst() {
            let newNode = ListNode(value)
            next?.next = newNode
            next = newNode
        }

        return node
    }
}
