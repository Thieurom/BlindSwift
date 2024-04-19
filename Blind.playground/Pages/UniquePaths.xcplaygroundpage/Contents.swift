//: [Previous](@previous)

/*:
 ## [62. Unique Paths](https://leetcode.com/problems/unique-paths/description/)
 [__Dynamic Programming__] [__Medium__]
 */
import BlindSwift

let solution = Solution()

[(3, 7), (3, 2)].forEach {
    print("m = \($0.0), n = \($0.1) => \(solution.uniquePaths($0.0, $0.1))")
}

//: [Next](@next)
