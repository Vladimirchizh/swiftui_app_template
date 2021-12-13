//
//  ContentView.swift
//  swiftui_app_template
//
//  Created by Apple on 13.12.2021.
//

import SwiftUI

class Colors {
  let colorTop = UIColor(red: 192.0/255.0, green: 38.0/255.0, blue: 42.0/255.0, alpha: 1.0)
  let colorBottom = UIColor(red: 35.0/255.0, green: 2.0/255.0, blue: 2.0/255.0, alpha: 1.0)

  let gl: CAGradientLayer

  init() {
    gl = CAGradientLayer()
    gl.colors = [ colorTop, colorBottom]
    gl.locations = [ 0.0, 1.0]
  }
}

struct ContentView: View {
    @Namespace var namespace
    @State var show = false
    let colors = Colors()

    var body: some View {
            VStack{ZStack {
                if !show {
                    VStack(alignment:.leading, spacing: 12){
                        Text("StyleGAN")
                            .font(.largeTitle.weight(.black))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        Text("Image generation with StyleGAN and CLIP".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                    }
                    .padding(20)
                    .foregroundColor(.white)
                    .background(Color.green.matchedGeometryEffect(id: "background", in: namespace))
                    .padding(20)
                } else {
                    
                    VStack(alignment:.leading, spacing: 12){
                        Spacer()
                        Text("Image generation with StyleGAN and CLIP".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        Text("StyleGAN")
                            .font(.largeTitle.weight(.black))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        
                        
                    }
                    .padding(20)
                    .foregroundColor(.red)
                    .background(Color.black.matchedGeometryEffect(id: "background", in: namespace))
                }
            
            }.onTapGesture {
                withAnimation{
                    show.toggle()
                    
                }
            }.offset(x:0,y:15)
            
            
            ZStack {
                if !show {
                    VStack(alignment:.leading, spacing: 12){
                        Text("StyleGAN")
                            .font(.largeTitle.weight(.black))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        Text("Image generation with StyleGAN and CLIP".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                    }
                    .padding(20)
                    .foregroundColor(.white)
                    .background(Color.green.matchedGeometryEffect(id: "background", in: namespace))
                    .padding(20)
                } else {
                    
                    VStack(alignment:.leading, spacing: 12){
                        Spacer()
                        Text("Image generation with StyleGAN and CLIP".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        Text("StyleGAN")
                            .font(.largeTitle.weight(.black))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        
                        
                    }
                    .padding(20)
                    .foregroundColor(.red)
                    .background(Color.black.matchedGeometryEffect(id: "background", in: namespace))
                }
            }.onTapGesture {
                withAnimation{
                    show.toggle()
                    
                }
            }.offset(x:0,y:15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
