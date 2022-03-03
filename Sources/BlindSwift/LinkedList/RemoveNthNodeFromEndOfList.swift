//
//  RemoveNthNodeFromEndOfList.swift
//  
//
//  Created by Doan Le Thieu on 03/03/2022.
//

extension Solution {
    // Time: O(n)
    // Space: O(1)
    public func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var head = head
        var first = head
        var second = head

        var n = n
        while first?.next != nil && n > 0 {
            first = first?.next
            n -= 1
        }

        while n > 0 {
            head = head?.next
            n -= 1
        }

        while first?.next != nil {
            first = first?.next
            second = second?.next
        }

        second?.next = second?.next?.next
        return head
    }
}
