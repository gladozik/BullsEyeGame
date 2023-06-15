import SwiftUI

struct HitMeButtonView: View {
    @Binding var isAlertVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View {
        HitMeButton(isAlertVisible: $isAlertVisible)
            .alert("resultPopUp",
                   isPresented: $isAlertVisible,
                   actions: {
                Button("Hit me") {
                    game.startNewRound(points: game.calculatePoints(sliderValue: Int(sliderValue)))
                }
            },
                   message: {
                Text("""
                     slider is \(Int(sliderValue.rounded()))
                     your score is \(game.calculatePoints(sliderValue: Int(sliderValue)))
                     """)
            })
    }
}

struct HitMeButton: View {
    @Binding var isAlertVisible: Bool
    var body: some View {
        Button(action: {
            isAlertVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.blue]),
                               startPoint: .leading,
                               endPoint: .trailing)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(22.0)
        .overlay(
            RoundedRectangle(cornerRadius: 22.0)
                .strokeBorder(Color("BorderColor"), lineWidth: 2.0)
            )
    }
}

//struct StartNewRoundButton: View {
//    var body: some View {
//        
//    }
//}


