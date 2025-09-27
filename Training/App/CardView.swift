

import SwiftUI

struct CardView: View {
    
    @State private var names : [String] = ["Sarah","Norah","Hadeel"]
    @State private var newName = ""
    @State private var namePicker = ""
    
    
    var body: some View {
        VStack{
            Text(namePicker.isEmpty ? " " : namePicker)
            
            List{
                ForEach(names, id: \.description ){ name in
                    Text(name)
                }
            }
            
            TextField("Enter new name", text: $newName)
                .onSubmit {
                    if !newName.isEmpty{
                        names.append(newName)
                        newName = ""
                    }
                }
            Divider()
            
            Button("Pick a random Name"){
                if let randomNmae = names.randomElement(){
                    namePicker = randomNmae
                } else{
                    namePicker = ""
                }
            }
        }
        .padding()
    }
}

#Preview {
    CardView()
}
