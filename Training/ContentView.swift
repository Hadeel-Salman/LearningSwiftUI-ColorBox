import SamplePackage
import SwiftUI

struct ContentView : View {
    var body : some View{
        VStack{
           HomePageView()
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        VStack{
            ContentView()
        }
    }
}

