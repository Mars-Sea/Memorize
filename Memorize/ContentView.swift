//
//  ContentView.swift
//  Memorize
//
//  Created by Mars_Sea on 2025/1/25.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["😀", "😅", "😍", "🥳"]
    
    var body: some View {
        HStack {
            ForEach(0..<4, id: \.self) { index in
                CardView(contant: emojis[index])
            }
            
//            CardView(contant: "😀")
//            CardView(contant: "😅")
//            CardView(contant: "😍")
//            CardView(contant: "🥳")
        }
        .padding()
        .foregroundStyle(.orange)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    let contant: String
    
    var body:some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(contant).font(.largeTitle)
            } else{
                base
            }
        }.onTapGesture {
            print(isFaceUp)
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
