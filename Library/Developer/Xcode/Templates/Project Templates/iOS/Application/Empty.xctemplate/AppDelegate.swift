import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    let vc = UIViewController()
    vc.title = "Demo"
    vc.view.backgroundColor = .systemBackground
    
    let nav = UINavigationController(rootViewController: vc)
    
    let win = UIWindow(frame: UIScreen.main.bounds)
    win.rootViewController = nav
    win.makeKeyAndVisible()
    
    self.window = win
    
    return true
  }
}
