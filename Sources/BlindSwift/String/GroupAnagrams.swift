//
//  GroupAnagrams.swift
//  
//
//  Created by Doan Le Thieu on 14/02/2022.
//

extension Solution {
    // Time: O(n^2*s)
    // Space: O(n*s) (if we take into account the returning value)
    public func _groupAnagrams1(_ strs: [String]) -> [[String]] {
        var groups = [[String]]()

        for str in strs {
            // This takes O(n * s) because `isAnagram` takes O(s)
            if let index = groups.firstIndex(where: { $0.contains(where: { isAnagram($0, str) }) }) {
                groups[index].append(str)
            } else {
                let group = [str]
                groups.append(group)
            }
        }

        return groups
    }

    // Time: O(n*slgs)
    // Space: O(n*s)
    // `s` is number of characters of each string.
    public func _groupAnagrams2(_ strs: [String]) -> [[String]] {
        var dict = [String: [Int]]()

        for (index, str) in strs.enumerated() {
            // Sort take O(slgs)
            dict[String(str.sorted()), default: []].append(index)
        }

        return dict.values
            .map { $0.map { strs[$0] } }
    }

    // Time: O(n*s)
    // Space: O(n*s)
    public func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [[Int]: [String]]()
        let aAscii = Character("a").asciiValue!

        // O(n)
        for str in strs {
            var freq = Array(repeating: 0, count: 26)
            // O(s)
            for c in str {
                if let asciiValue = c.asciiValue {
                    freq[Int(asciiValue - aAscii)] += 1
                }
            }

            dict[freq, default: []].append(str)
        }

        return dict.values.map { $0 }
    }
}
