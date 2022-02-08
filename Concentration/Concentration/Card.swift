//
//  Card.swift
//  Concentration
//
//  Created by Владислав Патраков on 08.02.2022.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var indentifierNumber = 0
    
    static func indentifierGeneration() -> Int {
        indentifierNumber += 1
        return indentifierNumber
    }
    
    init() {
        self.identifier = Card.indentifierGeneration()
    }
    
    
}
