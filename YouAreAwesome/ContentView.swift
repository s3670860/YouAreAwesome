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
        
        VStack(alignment: .center, spacing: 1) {
            Image(systemName: "5.circle")
                .resizable()
                .scaledToFit()
        }
        VStack {
//        add parameter to the stack to make adjustments
//        VStack (spacing: 0) {
            Image(systemName: "4.circle")
                .resizable()
                .scaledToFit()
//                            .imageScale(.large)
                .foregroundStyle(.purple)
//                .padding(.trailing, 30.0)
//                .padding(.bottom, 100)
//                .background(.blue)
            
            Rectangle()
                .foregroundColor(.purple)
//                .scaledToFit()
            Text(stringyMcTextFace)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
//             center the text if on more than one line
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .italic()
//             create a frame so the buttons don't move when text appears
                .frame(height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            Add a second frame set to infinite width so text adapts to different screen size
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//             create a border to assist with debugging
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            
            HStack {
                Button("Awesome") {
//                     This is the action performed when the button is pressed
                    stringyMcTextFace = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
//                     This is the action performed when the button is pressed
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
            Text("Version 5.0")
                .bold()
//                .padding()
                .foregroundColor(.red)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
