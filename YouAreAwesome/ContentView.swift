//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by nathan albinger on 4/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var stringyMcTextFace = ""
    var body: some View {
        
        VStack {
            Image(systemName: "2.circle")
                .resizable()
                .scaledToFit()
            //                .imageScale(.large)
                .foregroundStyle(.purple)
                .padding(30.0)
                .padding(.bottom, 100)
//                .background(.green)
            
            Rectangle()
                .foregroundColor(.green)
            Text(stringyMcTextFace)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .italic()
                .padding()
//                .background(.black)
            HStack {
                Button("Awesome") {
    //                // This is the action performed when the button is pressed
                    stringyMcTextFace = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
    //                // This is the action performed when the button is pressed
                    stringyMcTextFace = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
                Button ("Greater"){
                    stringyMcTextFace = "You Are The Greatest!"
                }
                .buttonStyle(.borderedProminent)
                Button("Best") {
                    stringyMcTextFace = "You Are The Best!"
                }
                .buttonStyle(.bordered)
            }
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
