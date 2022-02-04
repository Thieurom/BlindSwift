//
//  MergeTwoSortedLists.swift
//  
//
//  Created by Doan Le Thieu on 04/02/2022.
//

extension Solution {
    // Time: O(m+n)
    // Space: O(1)
    public func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var current1 = list1
        var current2 = list2
        let dummyNode = ListNode(0)  // The value can be any.
        var current = dummyNode

        while current1 != nil && current2 != nil {
            if current1!.val < current2!.val {
                current.next = current1
                current1 = current1?.next
            } else {
                current.next = current2
                current2 = current2?.next
            }

            current = current.next!
        }

        current.next = current1 ?? current2
        return dummyNode.next
    }
}
