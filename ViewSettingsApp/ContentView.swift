//
//  ContentView.swift
//  ViewSettingsApp
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation = 0.0
    @State private var rotation2 = 0.0
    @State private var blur: Float = 0
    @State private var opacity = 1.0
    var body: some View {
        VStack{Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .padding()
            .background(Color.pink)
            .cornerRadius(20)
            .opacity(opacity)
            .blur(radius: CGFloat(blur))
         //   .overlay(RoundedRectangle(cornerRadius: 20)
         //               .stroke(Color.green, lineWidth: 5)
          //  .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
          //  .shadow(color: .red, radius: 5, x: 10, y: 10)
            .rotationEffect(.degrees(rotation))
            .rotation3DEffect(
                .degrees(rotation2),
                axis: (x: 0, y: 1, z: 0)
            )
            .scaleEffect(1)
            Slider(value: $rotation, in: 0...360, step: 1.0)
            Slider(value: $rotation2, in: 0...360, step: 1.0)
            Slider(value: $blur, in: 0...30, step: 1)
            Slider(value: $opacity, in: 0...1, step: 0.01)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
