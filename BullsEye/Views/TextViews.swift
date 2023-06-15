import Foundation
import SwiftUI

struct InstructionsTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .multilineTextAlignment(.center)
            .kerning(2.0)
            .lineSpacing(4.0)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct TargetView: View {
    @Binding var game: Game
    var body: some View {
        Text(String(game.target))
            .bold()
            .kerning(-1.0)
            .font(.title)
    }
}

struct RightSliderBorderView: View {
    var body: some View {
        Text("100")
            .bold()
            .font(.body)
            .foregroundColor(Color("TextColor"))
    }
}

struct LeftSliderBorderView: View {
    var body: some View {
        Text("0")
            .bold()
            .font(.body)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderBorderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            LeftSliderBorderView()
            Slider(value: $sliderValue,
                   in: 1.0...100.0)
            RightSliderBorderView()
        }
        .padding()
    }
}

struct BottomNumberView: View {
    var score: String
    var body: some View {
        Text(score)
            .bold()
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 65.0, height: 40.0)
            )

    }
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
            .lineSpacing(12.0)
            .multilineTextAlignment(.center)
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .bold()
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.white)
            .background(
                Color.accentColor
                )
            .cornerRadius(12)
    }
}



struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionsTextView(text: "abcAbc")
            LabelText(text: "999")
            BodyText(text: "you scored 222 points \n 🇦🇲🇦🇲🇦🇲")
            ButtonText(text: "Start new round")
        }
        .padding()
    }
}

