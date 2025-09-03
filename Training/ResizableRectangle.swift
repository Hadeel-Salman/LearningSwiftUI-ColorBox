//
//  ResizableRectangle.swift
//  Training
//
//  Created by Hadeel on 03/09/2025.
//

import SwiftUI

struct ResizableRectangle: View {
    @State var counter = 0
    @State private var size: CGFloat = 100
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: CGFloat(counter)+100, height: CGFloat(counter)+100)
                .cornerRadius(12)
                .animation(.spring(), value: counter)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.top,100)
            Spacer()
            
            HStack{
                Button(action: {
                    if counter < 280{
                        counter += 20
                        size += 1
                    }
                }) {
                    Image(systemName: "plus.app.fill")
                }
                
                Text("\(counter)")
                
                Button(action: {
                    if counter > 0 { counter -= 20 }
                    if size > 0 { size -= 1 }
                }) {
                    Image(systemName: "minus.square.fill")
                }
            }
        }
    }
}

#Preview {
    ResizableRectangle()
}
