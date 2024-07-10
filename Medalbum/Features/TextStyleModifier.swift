import SwiftUI

struct TextStyleModifier: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight
    var color: Color

    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: .default))
            .foregroundColor(color)
    }
}

extension View {
    func textStyle(size: CGFloat, weight: Font.Weight, color: Color = .black) -> some View {
        self.modifier(TextStyleModifier(size: size, weight: weight, color: color))
    }
}


