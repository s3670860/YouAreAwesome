//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by nathan albinger on 4/12/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
//    create text vars that can be manipulated with screen redraws
    @State private var stringyMcTextFace = ""
    @State private var convertedTemperture = ""
    @State private var inputTemperature = ""
    @State private var isCelciusToFahrenheight = true
    
    var body: some View {
        
//                add parameter to the stack to make adjustment
        
//        VStack(alignment: .center, spacing: 55) {
//            Image(systemName: "6.circle")
////                .resizable()
////                .scaledToFit()
//        }
        
        ZStack {
            //            Color.lawn.opacity(0.5)
            Rectangle()
            
            //            either fill with a color and default gradient
            
            //                .fill(.lawn.gradient)
            
            //            or create your own gradient
            
                .fill(
                    Gradient(colors: [Color("Lawn"), .indigo])
                )
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                //        add parameter to the stack to make adjustments
                
                //        VStack (spacing: 0) {
                
                //                removed tutorial elements
                
                //            Image(systemName: "4.circle")
                //                .resizable()
                //                .scaledToFit()
                //                            .imageScale(.large)
                //                .foregroundStyle(.purple)
                //                .padding(.trailing, 30.0)
                //                .padding(.bottom, 100)
                //                .background(.blue)
                
                //            Rectangle()
                //                .foregroundColor(.purple)
                //                .scaledToFit()
                Text("Temperature Converter")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                //            using a color set created in a palette
                    .background(Color("Vermillion"))
                    .cornerRadius(15)
                Spacer()
                //                Input Field
                TextField("Enter Temperture", text: $inputTemperature)
                    .keyboardType(.decimalPad)
                    .background(Color("Lawn"))
                    .padding()
                    .cornerRadius(15)
                    .shadow(radius: 1)
                
                Toggle("Celcius to Fahrenheight", isOn: $isCelciusToFahrenheight)
                    .padding()
                
                Button(action: {
                    calculateTemperature()
                    
                }) {
                    Text("Convert")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .cornerRadius(8)
                    //                {
                    //                    userInput = "350"
                    //                }
                    //                .buttonStyle(.borderedProminent)
                    //                .tint(Color("Vermillion"))
                    Spacer()
                    
                    //                Text(tempCalculation)
                    //                    .font(.largeTitle)
                    //                    .fontWeight(.heavy)
                    //                    .minimumScaleFactor(0.5)
                    //    //             center the text if on more than one line
                    //                    .multilineTextAlignment(.center)
                    //                    .foregroundColor(.red)
                    //    //             create a frame so the buttons don't move when text appears
                    //                    .frame(height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //    //            Add a second frame set to infinite width so text adapts to different screen size
                    //                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    //    //             create a border to assist with debugging
                    //                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    //                    .padding()
                    
                    //                let myInt = Double(userInput) ?? 0
                    //                let calcValue = (myInt - 32) * (5/9)
                    Button("Calculate") {
                        //                    tempCalculation  = String(calcValue)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Sunset"))
                    Spacer()
                    
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
                    //                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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
                    .tint(Color("Sunset"))
                    
                    Text("Version 7.0")
                        .bold()
                    //                .padding()
                        .foregroundColor(.red)
                    
                }
                .padding()
                
            }
            
            
        }
        
    }
    func calculateTemperature() {
        guard let inputTemp = Double(inputTemperature)
        else {
            convertedTemperture = "Inavlid Input"
            return
        }
        if isCelciusToFahrenheight {
            let result = inputTemp * 9/5 + 32
            convertedTemperture = String(format: "%.2fºF", result)
        } else {
            let result = (inputTemp - 32) * 5/9
            convertedTemperture = String(format: "%.2fºF", result)
        }
    }
}

#Preview {
    ContentView()
}
