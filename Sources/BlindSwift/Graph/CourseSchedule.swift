//
//  CourseSchedule.swift
//  BlindSwift
//
//  Created by Doan Thieu on 20/1/25.
//

extension Solution {

    public func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        let graph = prerequisites.reduce(into: [Int: [Int]]()) {
            $0[$1[1], default: []].append($1[0])
        }
        var indegrees = prerequisites.reduce(into: [Int](repeating: 0, count: numCourses)) {
            $0[$1[0]] += 1
        }
        var queue = indegrees
            .enumerated()
            .filter { $0.element == 0 }
            .map(\.offset)

        var index = 0
        var added = 0

        while index < queue.count {
            let course = queue[index]
            added += 1

            for next in graph[course] ?? [] {
                indegrees[next] -= 1
                if indegrees[next] == 0 {
                    queue.append(next)
                }
            }
            index += 1
        }

        return added == numCourses
    }
}
