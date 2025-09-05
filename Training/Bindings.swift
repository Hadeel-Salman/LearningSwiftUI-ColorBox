//
//  Bindings.swift
//  Training
//
//  Created by Hadeel on 05/09/2025.
//

import SwiftUI

struct Bindings: View {
    @State var isOn = false
    @State var color : [Color] = [.red , .yellow, .green]
    @State var currentIndex = 0
     
    
    var body: some View {
        
        VStack{
            Circle()
                .foregroundColor(isOn && currentIndex == 0 ? color[0] : .gray)
                .frame(maxWidth: 100)
            Circle()
                .foregroundColor(isOn && currentIndex == 1 ? color[1] : .gray)
                .frame(maxWidth: 100)
            Circle()
                .foregroundColor(isOn && currentIndex == 2 ? color[2] : .gray)
                .frame(maxWidth: 100)
            Button(action: {currentIndex = (currentIndex+1) % color.count}, 
                   label: {
                Text("next")
            })
            
            Toggle(isOn ? "Turn Off the trafic light" : "Turn On the trafic light", isOn: $isOn)
            
            
            
        }.padding()
    }
}

#Preview {
    Bindings()
}
