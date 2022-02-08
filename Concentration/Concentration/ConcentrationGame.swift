//
//  ConcentrationGame.swift
//  Concentration
//
//  Created by Владислав Патраков on 08.02.2022.
//

import Foundation

class ConcentrationGame {
   
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUp: Int?
    
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchingIndex = indexOfOneAndOnlyFaceUp, matchingIndex != index {
                if cards[matchingIndex].identifier == cards[index].identifier {
                    cards[matchingIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUp = nil
            } else {
                for flipDown in cards.indices {
                    cards[flipDown].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUp = index
            }
        }
    }
    
    init(numberOfPairOfCards: Int) {
        for _ in 1...numberOfPairOfCards {
            let card = Card()
            cards += [card, card]
        }
//        TODO: Shuffle the cards
    }
    
}
