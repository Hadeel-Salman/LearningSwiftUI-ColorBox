
import SwiftUI
//import Guide

@main
struct TrainingApp: App {
    
    @StateObject var foodies = favoriteFoodClass()
    @StateObject var Animaldata = animalsCollection()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
            }
            .navigationTitle("my title")
            .environmentObject(foodies)
            .environmentObject(Animaldata)
            
        }
    }
}
