import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    .frame(width: 65.0, height: 65.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
            Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
                .frame(width: 65.0, height: 65.0)
            )
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
        }
        
    }
}
