//
//  MemoryGame.swift
//  Memorize
//
//  Created by Vitor Costa on 14/07/20.
//  Copyright © 2020 Vitor Costa. All rights reserved.
//

import Foundation

//this is the Model

//we are using the Generic Type to be able the use different types of cards. For example: Image, String, Int and etc.
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }
    
    func choose(card: Card) {
        print("Card choosen: \(card)")
    }
    
    // we are using this structure within another to facilitate understanding of the structure of this game
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
