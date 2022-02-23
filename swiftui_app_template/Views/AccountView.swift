//
//  AccountView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 23.02.2022.
//

import SwiftUI

struct AccountView: View {
    private var user: User
    init(user: User){
        self.user = user
    }
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Image(systemName: user.picture)
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding(.horizontal, 110)
                Text("\(user.firstName) \(user.lastName)")
                        .font(.title)
                        .bold()
            }
            
            Spacer().frame(height: 30)
            VStack(alignment: .leading, spacing: 13){
                HStack{
                    Image(systemName: "phone")
                    Text("Телефон")
                    Text(user.phone)
                }
                HStack{
                    Image(systemName: "envelope")
                    Text(user.email)
                }
                HStack{
                    Image(systemName: "book.closed")
                    Text(user.level)
                }
            }
            Spacer()
            Button("Update profile"){
                print("button tapped")
            }

                    .foregroundColor(Color.black)
                    .padding()
                    .padding(.horizontal)
                    .background(.ultraThinMaterial)
                    .cornerRadius(30)
                    .shadow(radius: 10)
            Spacer()
        }
                .background(.ultraThickMaterial)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .padding(20)
                .shadow(radius: 10)
                .background(LavaItem().padding(110))
        
        

    }

}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(user: User(
                picture: "person.crop.circle",
                firstName: "Vladimir",
                lastName: "Chizhevskiy",
                phone: "+79281515366",
                email: "vdchizhevskiy@gmail.com",
                level: "Advanced II"
        )
        )
    }
}
