//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ergenekon Yiğit on 4.02.2021.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["👻", "🎃", "🕷", "💀", "🕯"]
        var randomEmojis: [String] = []
        for _ in 0...Int.random(in: 2..<5) {
            let randomEmojiIndex = emojis.indices.randomElement()!
            randomEmojis.append(emojis[randomEmojiIndex])
            emojis.remove(at: randomEmojiIndex)
        }
        
        return MemoryGame<String>(numberOfPairsOfCards: randomEmojis.count) { pairIndex in
            return randomEmojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards.shuffled()
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
