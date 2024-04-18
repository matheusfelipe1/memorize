//
//  ContentView.swift
//  memorize
//
//  Created by Matheus Felipe on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel = EmojiMemoryGame()
    var body: some View {
        HStack {
            ForEach(viewModel.cards, content: { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
                
            })
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
                    
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

#Preview {
    ContentView()
}
