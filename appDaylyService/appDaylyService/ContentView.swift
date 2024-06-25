import SwiftUI

struct ContentView: View {
    @StateObject var networkManager = NetworkManager()
    @State private var isSplashScreenActive: Bool = true

    var body: some View {
        ZStack {
            if isSplashScreenActive {
                SplashScreenView(isActive: $isSplashScreenActive)
            } else {
                if networkManager.isLoggedIn {
                    MainTabView(networkManager: networkManager)
                } else {
                    LoginView(networkManager: networkManager)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
