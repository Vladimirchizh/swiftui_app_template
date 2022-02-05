//
//  CardView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 02.02.2022.
//

import SwiftUI

struct CardView: View {
    @State var flipped = false
    var body: some View {
        CardItem(
            card: Card(text: "litigation"),
                 onRemove: { _ in
                    // do nothing
            }
        )
        .foregroundColor(self.flipped ? .red : .teal) // change the card color when flipped
        .padding()
        .rotation3DEffect(self.flipped ? Angle(degrees: 180): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
        .animation(.default) // implicitly applying animation
        .onTapGesture {
            // explicitly apply animation on toggle (choose either or)
            withAnimation {
                self.flipped.toggle()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
        
    }
}
