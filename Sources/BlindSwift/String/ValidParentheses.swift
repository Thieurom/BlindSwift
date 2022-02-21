//
//  ValidParentheses.swift
//  
//
//  Created by Doan Le Thieu on 21/02/2022.
//

import Foundation

extension Solution {
    public func isValid(_ s: String) -> Bool {
        var parentheses = [String.Element]()

        for c in s {
            switch c {
            case ")", "}", "]":
                if parentheses.last == c.openingParenthesis {
                    parentheses.removeLast()
                } else {
                    fallthrough
                }

            case "(", "{", "[":
                parentheses.append(c)
            default:
                return false
            }
        }

        return parentheses.isEmpty
    }
}

extension Character {
    fileprivate var openingParenthesis: Character? {
        switch self {
        case ")": return "("
        case "]": return "["
        case "}": return "{"
        default: return nil
        }
    }
}
