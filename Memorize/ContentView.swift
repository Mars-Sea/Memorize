//
//  ContentView.swift
//  Memorize
//
//  Created by Mars_Sea on 2025/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundStyle(.orange)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body:some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack {
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("😀").font(.largeTitle)
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
