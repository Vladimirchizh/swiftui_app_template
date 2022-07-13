//
//  QuizView.swift
//  swiftui_app_template
//
//  Created by Apple on 13.12.2021.
//

import SwiftUI


struct QuizView: View {
    /// List of users
    @State var users: [Card] = cards
    
    /// Return the CardViews width for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current user
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(users.count - 1 - id) * 10
        return geometry.size.width - offset
    }
    
    /// Return the CardViews frame offset for the given offset in the array
    /// - Parameters:
    ///   - geometry: The geometry proxy of the parent
    ///   - id: The ID of the current user
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(users.count - 1 - id) * 10
    }
    
    private var maxID: Int {
        return self.users.map { $0.id }.max() ?? 0
    }
    
    @State private var listAll = false
    var body: some View {
        VStack {
            GeometryReader { geometry in
                LinearGradient(gradient: Gradient(colors: [.teal, Color.init(#colorLiteral(red: 1, green: 0.9882352941, blue: 0.862745098, alpha: 1))]), startPoint: .bottom, endPoint: .top)
                    .frame(width: geometry.size.width * 1.5, height: geometry.size.height)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .offset(x: -geometry.size.width / 4, y: -geometry.size.height / 2)
                    .padding(-140)
                
                VStack(spacing: 24) {
                    DateLongView()
                    
                    if !listAll{
                        Spacer().frame(height: 80)
                        ZStack {
                            /* ForEach(self.users, id: \.self) { user in
                                Group {
                                    // Range Operator
                                    if (self.maxID - 3)...self.maxID ~= user.id {
                                        CardView(user: user, onRemove: { removedUser in
                                            // Remove that user from our array
                                            self.users.removeAll { $0.id == removedUser.id }
                                        })
                                            .animation(.spring())
                                            .frame(width: self.getCardWidth(geometry, id: user.id), height: 400)
                                            .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                                        }
                                    }
                                } */
                                
                                CardStackView()
                            }
                        Spacer().frame(height: 64)
                        Button("Показать все слова") {
                            withAnimation{
                                listAll.toggle()
                                
                            }
                        }
                        .foregroundColor(Color.black)
                        .padding()
                        .padding(.horizontal)
                        .background(.ultraThinMaterial)
                        .cornerRadius(30)
                        .shadow(radius: 5)
                        Spacer()
                        
                        }
                    
                    if listAll{
                        Spacer().frame(height: 22)
                        //Text("Список слов")
                        List(cards){user in
                            HStack{
                                Text(user.text)
                                Spacer()
                                Text(user.translate)}
                        }
                        .cornerRadius(20)
                        .frame(height: 400)
                        Spacer()
                        Button("Показать карточки") {
                            withAnimation{
                                listAll.toggle()
                                
                            }
                        }
                        .foregroundColor(Color.black)
                        .padding()
                        .padding(.horizontal)
                        .background(.ultraThinMaterial)
                        .cornerRadius(30)
                        .shadow(radius: 5)
                        Spacer()
                    }
                }
            }
        }.padding()
    }
}

struct DateLongView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    
                    Text(Date(), style: .date)
                        .font(.title)
                        .bold()
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
