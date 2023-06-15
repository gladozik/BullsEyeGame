//
//  BackgroundView.swift
//  BullsEye
//
//  Created by Yury Sapozhkov on 08.06.2023.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer  ()
            BottomView(game: $game)
        }
        .padding()
        .background(
           RingsView()
        )
    }
}

struct TopView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            Button( action: {
                game.restart()
            }, label: {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            })
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumbersView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 10.0) {
            LabelText(text: title)
            BottomNumberView(score: text)
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack {
            NumbersView(title: "Score", text: String(game.score))
            Spacer()
            NumbersView(title: "Round", text: String(game.round))
        }
    }
}

struct RingsView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            ForEach(1..<6) { ring in
                let size = CGFloat(ring * 100)
                Circle()
                    .stroke(lineWidth: 20.0)
                    .fill(
                        RadialGradient(colors: [Color("RingsColor").opacity(0.3 * 0.8),
                                                Color("RingsColor").opacity(0)],
                                       center: .center,
                                       startRadius: 100,
                                       endRadius: 300)
                    )
                    .frame(width: size, height: size)
            }
        }
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
