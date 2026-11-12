import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        // Only needed if the app builds its window in code (no storyboard):
        // window = UIWindow(windowScene: windowScene)
        // window?.rootViewController = YourRootViewController()
        // window?.makeKeyAndVisible()
    }
}
