//
//  ContentView.swift
//  ColorizedAppUI
//
//  Created by Илья Морин on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    
    @State private var greenSliderValue = Double.random(in: 0...255)
    
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var alertPresented = false
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            
            VStack {
                CustomView(color: .init(red:redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255) )
                
                
                ColorSliderView(value: $redSliderValue, textColor: .black, tintColor: .red)
                
                
                ColorSliderView(value: $greenSliderValue, textColor: .black, tintColor: .green)
                
                
                ColorSliderView(value: $blueSliderValue, textColor: .black, tintColor: .blue)
                Spacer()
                
            }
            .padding()
            
            
        }
        
    }
}
                                         

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    
    let textColor: Color
    let tintColor: Color
    
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(textColor)
            Slider(value: $value, in: 0...255, step: 1).tint(tintColor)
            SliderValueTextField(input: $value)
            
        }
        .padding()
    }
}

struct SliderValueTextField: View {
    @Binding var input: Double
    var body: some View {
        TextField("", value: $input, formatter: DoubleFormatter())
            .frame(width: 60, height: 40)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 4))
            .padding()
            .keyboardType(.decimalPad)

    }
}

