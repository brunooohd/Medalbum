import SwiftUI

struct TextStyleModifier: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight

    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: .default))
            .foregroundColor(.black)
    }
}

extension View {
    func textStyle(size: CGFloat, weight: Font.Weight) -> some View {
        self.modifier(TextStyleModifier(size: size, weight: weight))
    }
}

