//
//  emojiPickerView.swift
//  Training
//
//  Created by Hadeel on 15/09/2025.
//

import SwiftUI

struct emojiPickerView: View {
    
    let emojis = ["🌵", "🌹", "🪴", "🌻", "🍀"]
    @State private var selectedEmoji: String = ""
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))]) {
                ForEach(emojis, id: \.self) { emoji in
                    Text(emoji)
                        .font(.largeTitle)
                        .padding()
                        .background(selectedEmoji == emoji ? Color.green.opacity(0.3) : Color.clear)
                        .clipShape(Circle())
                        .onTapGesture {
                            selectedEmoji = emoji
                        }
                }
            }

        }
    }
}

#Preview {
    emojiPickerView()
}
