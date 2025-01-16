//
//  UnionFind.swift
//  BlindSwift
//
//  Created by Doan Thieu on 16/1/25.
//

public struct UnionFind<Element> where Element: Hashable {

    private var parents: [Element: Element]
    private var ranks: [Element: Int]

    public init(_ elements: any Sequence<Element>) {
        let elements = Set(elements)
        parents = elements.reduce(into: [:]) {
            $0[$1] = $1
        }
        ranks = parents.mapValues { _ in 1 }
    }

    public mutating func find(_ element: Element) -> Element? {
        guard let parent = parents[element] else { return nil }
        if parent == element { return element }
        parents[element] = find(parent)
        return parents[element]
    }

    @discardableResult
    public mutating func union(_ element1: Element, _ element2: Element) -> Bool {
        guard let parent1 = find(element1),
              let parent2 = find(element2),
              parent1 != parent2 else { return false }

        if ranks[parent1]! > ranks[parent2]! {
            parents[parent2] = parent1
        } else if ranks[parent1]! < ranks[parent2]! {
            parents[parent1] = parent2
        } else {
            parents[parent2] = parent1
            ranks[parent1]! += 1
        }
        return true
    }
}
