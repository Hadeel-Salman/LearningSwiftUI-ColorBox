//
//  toggles.swift
//  Training
//
//  Created by Hadeel on 02/09/2025.
//

import SwiftUI

struct toggles: View {
    @State var isOn = false
    
    var body: some View {
        VStack{
            Colorful()
        }
    }
}


struct Colorful: View {
    @State var colors: [Color] = [.pink, .purple, .mint, .yellow, .green, .blue]
    @State var currentIndex = 0
    var body: some View {
        Button(action: {currentIndex = (currentIndex+1)%colors.count}){
           Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                .foregroundColor(colors[currentIndex])
                .cornerRadius(12)
        }
    }
}

#Preview {
    toggles()
}
