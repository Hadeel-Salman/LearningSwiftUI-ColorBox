import SwiftUI

struct ExpandableButtonView: View {
    
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if isExpanded {

                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 250, height: 200)
                    .overlay(
                        VStack(spacing: 20) {
                            Text("I’m now a Card 🎉")
                                .foregroundColor(.white)
                                .font(.title2)
                            
                         
                            Button(action: {
                                withAnimation(.spring()) {
                                    isExpanded = false
                                }
                            }) {
                                HStack {
                                    Image(systemName: "xmark.circle.fill")
                                    Text("Close")
                                }
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.red)
                                .cornerRadius(12)
                            }
                            .transition(.scale.combined(with: .opacity))
                        }
                    )
                    .transition(.scale.combined(with: .opacity))
            } else {
                
                Button(action: {
                    withAnimation(.spring()) {
                        isExpanded = true
                    }
                }) {
                    Text("Tap me")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .transition(.scale.combined(with: .opacity))
            }
            
            Spacer()
        }
        .animation(.spring(), value: isExpanded)
    }
}

#Preview {
    ExpandableButtonView()
}
