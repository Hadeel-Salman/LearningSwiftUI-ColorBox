//
//  ResizableCircle.swift
//  Training
//
//  Created by Hadeel on 06/09/2025.
//

import SwiftUI

struct ResizableCircle: View {
    
    @State var circleSize : Double = 1
    @State var color = Color.primary
    
    @State var name = ""
    @State var hobby = ""
    @State var favoriteFood = ""
    
    @State var isOn = false
    
    var body: some View {
        VStack{
            Circle()
                .foregroundStyle(color)
                .frame(width: circleSize * 100)
            
            Slider(value: $circleSize)
                .foregroundStyle(color)
            
            ColorPicker("pick a color for the circle", selection: $color)
            
            
            
            VStack{
                Toggle("Show stort", isOn: $isOn)
                if isOn {
                    Text("Hello, my name is \(name), my favorite hobby is \(hobby) and I can't stop eating \(favoriteFood)!")
                }
                
                TextField("Your name : ", text: $name)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                TextField("Your hobby : ", text: $hobby)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                TextField("Your favoriteFood : ", text: $favoriteFood)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }.padding()
    }
}
#Preview {
    ResizableCircle()
}
