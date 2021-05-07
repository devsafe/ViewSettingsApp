//
//  ContentView.swift
//  ViewSettingsApp
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{Text("Hello, SwiftUI!")
            .font(.largeTitle)
            .padding()
         //   .overlay(RoundedRectangle(cornerRadius: 20)
         //               .stroke(Color.green, lineWidth: 5)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
            .shadow(color: .red, radius: 5, x: 10, y: 10)
        Circle()
            .strokeBorder(Color.pink, style: StrokeStyle(lineWidth: 5, dash: [10,2,40]))
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
