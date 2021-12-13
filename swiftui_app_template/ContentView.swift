//
//  ContentView.swift
//  swiftui_app_template
//
//  Created by Apple on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            if !show {
                Text("StyleGAN")
                    .padding().frame(width: .infinity,
                                     alignment: .leading)
            } else {
                Text("StyleGAN")
                    .padding().frame(width: .infinity,
                                     alignment: .trailing)
            }
        }.onTapGesture {
            withAnimation{
                show.toggle()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
