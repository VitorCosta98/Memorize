//
//  ContentView.swift
//  Memorize
//
//  Created by Vitor Costa on 13/07/20.
//  Copyright © 2020 Vitor Costa. All rights reserved.
//

import SwiftUI

//this is the View
struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        //these are all views, like Legos. Where a set of Views make another View
        //HStack as HorizontalStack
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            //these functions it suits to control the appearance of the some View. In this case, the HStack
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card:  MemoryGame<String>.Card
    var body: some View {
        //these all are also views, like Legos.
        ZStack {
            //into ZStacks is possible use conditionals
            if card.isFaceUp {
                //each function in here returns a View
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
