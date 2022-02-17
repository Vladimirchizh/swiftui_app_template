//
//  CardView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 02.02.2022.
//


import SwiftUI

struct CardView: View {
    @State private var translation: CGSize = .zero
    @State private var swipeStatus: LikeDislike = .none
    @State var flipped = false
    private var user: Card
    private var onRemove: (_ user: Card) -> Void
    
    private var thresholdPercentage: CGFloat = 0.5 // when the user has draged 50% the width of the screen in either direction
    
    private enum LikeDislike: Int {
        case like, dislike, none
    }
    
    init(user: Card, onRemove: @escaping (_ user: Card) -> Void) {
        self.user = user
        self.onRemove = onRemove
    }
    
    /// What percentage of our own width have we swipped
    /// - Parameters:
    ///   - geometry: The geometry
    ///   - gesture: The current gesture translation value
    private func getGesturePercentage(_ geometry: GeometryProxy, from gesture: DragGesture.Value) -> CGFloat {
        gesture.translation.width / geometry.size.width
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                 ZStack(alignment: self.swipeStatus == .like ? .topLeading : .topTrailing) {
                     
                    if self.swipeStatus == .like {
                        Text("ЗНАЮ")
                            .font(.headline)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                            .rotationEffect(Angle.degrees(-45))
                    } else if self.swipeStatus == .dislike {
                        Text("НЕ ЗНАЮ")
                            .font(.headline)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                            .rotationEffect(Angle.degrees(45))
                            .frame(maxWidth: .infinity, alignment: .topTrailing)
                            .padding(10)
                    }
                }
                
                HStack {
                    self.flipped ?
                    VStack {
                        Text(self.user.translate.uppercased())
                            .font(.title)
                            .fontWeight(.semibold)
                            
                    } :
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text(self.user.text.uppercased())
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        // .padding(.horizontal,30)
                    }
                    Spacer()
                    
                }
                .padding(.horizontal)
                .padding(60)
            }
            .padding(.bottom)
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .foregroundColor(self.flipped ? .teal : .black) // change the card color when flipped
            .padding()
            .rotation3DEffect(self.flipped ? Angle(degrees: 180): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
            .animation(.default)
            .onTapGesture {
                    self.flipped.toggle()
            }
            .animation(.interactiveSpring())
            .offset(x: self.translation.width, y: 0)
            .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.translation = value.translation
                        
                        if (self.getGesturePercentage(geometry, from: value)) >= self.thresholdPercentage {
                            self.swipeStatus = .like
                        } else if self.getGesturePercentage(geometry, from: value) <= -self.thresholdPercentage {
                            self.swipeStatus = .dislike
                        } else {
                            self.swipeStatus = .none
                        }
                        
                }.onEnded { value in
                    // determine snap distance > 0.5 aka half the width of the screen
                        if abs(self.getGesturePercentage(geometry, from: value)) > self.thresholdPercentage {
                            self.onRemove(self.user)
                        } else {
                            self.translation = .zero
                        }
                    }
            )
        }
    }
}

// 7
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: Card(id: 1, text: "Mark", translate: "Bennett"),
                 onRemove: { _ in
                    // do nothing
            })
            .frame(height: 400)
            .padding()
    }
}
