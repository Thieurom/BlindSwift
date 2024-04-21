//: [Previous](@previous)
/*:
 ## [133. Clone Graph](https://leetcode.com/problems/clone-graph/)
 [__Graph__] [__Medium__]
 */
import BlindSwift

// For simplicity, each node's value is the same as the node's index (1-indexed).
// For example, the first node with val == 1, the second node with val == 2, and so on.
// The graph is represented in the test case using an adjacency list.

// The given node will always be the first node with val = 1.
func graph(adjacencyList list: [[Int]]) -> Node? {
    let nodes = list.enumerated().map { Node($0.offset + 1) }

    for i in (0..<list.count) {
        nodes[i].neighbors = nodes
            .filter {
                list[i].contains($0.val)
            }
    }

    return nodes.first
}

extension Node {
    func print() {
        var stack: [Node] = [self]
        var visited: Set<Int> = [self.val]

        while !stack.isEmpty {
            let node = stack.removeLast()
            Swift.print("(\(node.val))", terminator: "")

            let neighbors = node.neighbors.compactMap { $0 }
            stack.append(
                contentsOf: neighbors.filter( { !visited.contains($0.val) })
            )
            neighbors.forEach {
                visited.insert($0.val)
            }
        }
        Swift.print()
    }
}

let solution = Solution()

let adjacencyList = [[2, 4], [1, 3], [2, 4], [1, 3]]
let node = graph(adjacencyList: adjacencyList)!
node.print()
let cloned = solution.cloneGraph(node)
cloned?.print()
//: [Next](@next)
