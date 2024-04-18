//: [Previous](@previous)
/*:
 ## [55. https://leetcode.com/problems/jump-game/description/)
 [__Dynamic Programming__] [__Medium__]
 */
import BlindSwift

let solution = Solution()

[[2, 3, 1, 1, 4], [3, 2, 1, 0, 4]].forEach {
    print("\($0) => \(solution.canJump($0))")
}
//: [Next](@next)
