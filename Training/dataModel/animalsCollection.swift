

import SwiftUI

class animalsCollection: ObservableObject {
    @Published var animalList : [animals] = [
        animals(name: "Monkey", emoji: "🐒", color: .brown),
    ]
}


struct animals : Identifiable {
    var name : String
    var emoji : String
    var color : Color
    
    var id = UUID()
    
}

