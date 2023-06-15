import SwiftUI

struct ContentView: View {
    @State private var isAlertVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsTextView(text:  "💣 \n Set slider as close as possible to")
                TargetView(game: $game)
                    .padding(.bottom, 100)
                HitMeButtonView(isAlertVisible: $isAlertVisible,
                                sliderValue: $sliderValue,
                                game: $game)
            }
            SliderBorderView(sliderValue: $sliderValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}

