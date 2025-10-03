//
//  Colorful.swift
//  Training
//
//  Created by Hadeel on 03/09/2025.
//

import SwiftUI

struct Colorful: View {
    @State var colors: [Color] = [.pink, .purple, .mint, .yellow, .green, .blue]
    @State var currentIndex = 0
    var body: some View {
        Button(action: {currentIndex = (currentIndex+1)%colors.count}){
            boxButton(color: colors[currentIndex])
        }
    }
}

struct boxButton:View {
    var color : Color
    var body: some View {
        Rectangle()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            .foregroundColor(color)
            .cornerRadius(12)
    }
}


#Preview {
    Colorful()
}
