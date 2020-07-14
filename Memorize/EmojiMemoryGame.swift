//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vitor Costa on 14/07/20.
//  Copyright © 2020 Vitor Costa. All rights reserved.
//

import SwiftUI

//this is the ViewModel
class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    //MARK: - Acces to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
