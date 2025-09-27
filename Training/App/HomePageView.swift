
import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack{
            
            NavigationStack{
                List{
                    
                    Section{
                        NavigationLink{
                            Colorful()
                                .navigationTitle("Colorful")
                        }label: {
                            CostumizedNavList(emoji: "🦍", label: "Colorful",color: .pink)
                        }
                        NavigationLink{
                            favFoodListView()
                                .navigationTitle("fav Food List")
                                .environmentObject(favoriteFoodClass())
                        }label: {
                            CostumizedNavList(emoji: "😋", label: "for foodies", color: .green)
                        }
                        NavigationLink{
                            animalsCollectionView()
                                .navigationTitle("Animals Collection")
                                .environmentObject(animalsCollection())
                        }label: {
                            CostumizedNavList(emoji: "🐾", label: "Animals Collection", color: .brown)
                        }
                    }
                    
                    Section{
                        NavigationLink{
                            Bindings()
                                .navigationTitle("Bindings")
                        }label: {
                            CostumizedNavList(emoji: "🦑", label: "Bindings",color: .mint)
                        }
                        NavigationLink{
                            ResizableCircle()
                                .navigationTitle("Resizable Circle")
                        }label: {
                            CostumizedNavList(emoji: "🦚", label: "Resizable Circle",color: .blue)
                        }
                        NavigationLink{
                            ResizableRectangle()
                                .navigationTitle("Resizable Rectangle")
                        }label: {
                            CostumizedNavList(emoji: "😵‍", label: "Resizable Rectangle",color: .yellow)
                        }
                        NavigationLink{
                            CardView()
                                .navigationTitle("Card")
                        }label: {
                            CostumizedNavList(emoji: "😵‍", label: "Names",color: .blue)
                        }

                        
                    }
                }
            }
        }
    }
}

#Preview {
    HomePageView()
}
