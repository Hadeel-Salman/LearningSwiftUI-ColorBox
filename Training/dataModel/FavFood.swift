
import SwiftUI

class favoriteFoodClass : ObservableObject {
    @Published var foodArr = [
        FavFood(name: "pizza", emoji: "🍕"),
        FavFood(name: "apple", emoji: "🍎"),
        FavFood(name: "chocolate", emoji: "🍫"),
    ]
}

struct FavFood: Identifiable {
    var name : String
    var emoji : String
    
    var id = UUID()
}

