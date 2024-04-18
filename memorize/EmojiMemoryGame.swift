//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Matheus Felipe on 17/04/24.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥱", "😻", "🫀", "👁️"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count, cardContentFactory: { pair in
            return emojis[pair]
        })
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}

