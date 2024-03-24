//
//  ReorderList.swift
//
//
//  Created by Doan Thieu on 24/3/24.
//

extension Solution {

    // Time: O(n)
    // Space: O(1)
    public func reorderList(_ head: ListNode?) {
        var slow = head
        var fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        // `slow` is now the `head` of the second-half

        var prev: ListNode?
        var second = slow?.next
        // disconnect two halves
        slow?.next = nil
        while second != nil {
            let next = second?.next
            second?.next = prev
            prev = second
            second = next
        }

        second = prev
        var first = head
        while second != nil {
            let nextFirst = first?.next
            let nextSecond = second?.next
            first?.next = second
            second?.next = nextFirst
            first = nextFirst
            second = nextSecond
        }
    }
}
