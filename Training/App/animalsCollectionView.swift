
import SwiftUI

struct animalsCollectionView: View {
    
    @EnvironmentObject var Animaldata : animalsCollection
    
    @State private var newName : String = " "
    @State private var newEmoji : String = " "
    @State private var newColor : Color = .primary
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4){
            Text("Pick an name")
                .padding(.horizontal)
            TextField("Enter Animal name", text: $newName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Text("Pick an emoji")
                .padding(.horizontal)
            TextField("Enter Animal emoji", text: $newEmoji)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            ColorPicker("Pick a color", selection: $newColor)
                .padding(.horizontal)
            
            Button(action: {
                guard !newName.isEmpty , !newEmoji.isEmpty else {return}
                let  anAnilmal = animals(name: newName, emoji: newEmoji, color: newColor)
                Animaldata.animalList.append(anAnilmal)
                newName = ""
                newEmoji = ""
                newColor = .primary
            })
            {
                Text("Add Animal")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                        }
                        .padding(.horizontal)
        }
        
        List{
            ForEach(Animaldata.animalList){ animals in
                HStack{
                    Text(animals.emoji)
                    Text(animals.name)
                    Spacer()
                    Circle()
                        .frame(width: 16)
                        .foregroundStyle(Color(animals.color))
                }
            }
            
        }
    }
}

#Preview {
    animalsCollectionView()
}
