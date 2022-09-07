//
//  ContentView.swift
//  Dicess-SwiftUI
//
//  Created by Keith on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var leftDice = 1
    @State var rightDice = 1
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    self.leftDice = Int.random(in: 1...6)
                    self.rightDice = Int.random(in: 1...6)
                } label: {
                    Text("Roll").font(.system(size: 30)).fontWeight(.heavy).foregroundColor(.white).padding(.horizontal).padding(.vertical)
                }
                .background(Color.red)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(contentMode: .fit).padding()
    }
}
