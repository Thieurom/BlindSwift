//
//  CloneGraph.swift
//
//
//  Created by Doan Thieu on 21/4/24.
//

extension Solution {

    public func cloneGraph(_ node: Node?) -> Node? {
        var table = [Int: Node]()
        return clone(node, &table)
    }

    private func clone(_ node: Node?, _ table: inout [Int: Node]) -> Node? {
        guard let node else { return nil }

        let copy = Node(node.val)
        table[copy.val] = copy

        for neighbor in node.neighbors.compactMap({ $0 }) {
            if let copied = table[neighbor.val] {
                copy.neighbors.append(copied)
            } else {
                copy.neighbors.append(clone(neighbor, &table))
            }
        }
        return copy
    }
}
