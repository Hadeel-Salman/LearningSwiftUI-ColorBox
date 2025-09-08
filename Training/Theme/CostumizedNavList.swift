//
//  CostumizedNavList.swift
//  Training
//
//  Created by Hadeel on 07/09/2025.
//

import SwiftUI

struct CostumizedNavList: View {
    var emoji : String
    var label : String
    var color : Color
    
    var body: some View {
        HStack{
            Text(emoji)
            Text(label)
            Spacer()
            Circle()
                .frame(width: 10)
                .foregroundStyle(color)
        }
    }
}

#Preview {
    CostumizedNavList(emoji: "🍎", label: "Fruits",color: .black)
}


