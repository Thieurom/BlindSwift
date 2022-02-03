//
//  ReverseLinkedList.swift
//  
//
//  Created by Doan Le Thieu on 02/02/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func reverseList(_ head: ListNode?) -> ListNode? {
        var node: ListNode? = nil
        var current: ListNode? = head

        while current != nil {
            let next = current?.next
            current?.next = node
            node = current
            current = next
        }

        return node
    }
}
