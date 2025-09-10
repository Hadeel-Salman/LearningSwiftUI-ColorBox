
import SwiftUI

struct favFoodListView: View {
    @EnvironmentObject var foodies : favoriteFoodClass
    
    var body: some View {
        VStack{
            List{
                ForEach(foodies.foodArr){ FavFood in
                    HStack{
                        Text(FavFood.name)
                        Spacer()
                        Text(FavFood.emoji)
                    }
                }
            }
        }
    }
}

#Preview {
    favFoodListView()
}
