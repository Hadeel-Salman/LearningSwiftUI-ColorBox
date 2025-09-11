
import SwiftUI

struct favFoodListView: View {
    @EnvironmentObject var foodies : favoriteFoodClass
    
    var body: some View {
        VStack{
            List{
                ForEach(foodies.foodArr){ food in
                    HStack{
                        Text(food.name)
                        Spacer()
                        Text(food.emoji)
                    }
                }
            }
        }
    }
}

#Preview {
    favFoodListView()
}
