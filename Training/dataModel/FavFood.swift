
import SwiftUI

class favoriteFoodClass : ObservableObject {
    @Published var foodArr = [
        food(name: "pizza", emoji: "🍕"),
        food(name: "apple", emoji: "🍎"),
        food(name: "chocolate", emoji: "🍫"),
    ]
}

struct food: Identifiable {
    var name : String
    var emoji : String
    
    var id = UUID()
}

