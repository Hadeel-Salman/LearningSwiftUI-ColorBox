

import SwiftUI

class animalsCollection: ObservableObject {
    @Published var animalList : [animals] = [
        animals(name: "Monkey", emoji: "🐒", color: .brown),
        animals(name: "Panda", emoji: "🐼", color: .black),
        animals(name: "Rabbit", emoji: "🐰", color: .white),
        animals(name: "Fox", emoji: "🦊", color: .orange),
        animals(name: "Bear", emoji: "🐻", color: .brown),
        animals(name: "Koala", emoji: "🐨", color: .gray),
        animals(name: "Horse", emoji: "🐴", color: .brown),
        animals(name: "Frog", emoji: "🐸", color: .green),
        animals(name: "Penguin", emoji: "🐧", color: .black),
        animals(name: "Dolphin", emoji: "🐬", color: .blue),
    ]
}


struct animals : Identifiable {
    var name : String
    var emoji : String
    var color : Color
    
    var id = UUID()
    
}

