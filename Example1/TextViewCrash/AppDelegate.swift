import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard let fontURL = Bundle.main.url(forResource: "KleinanzeigenRebondText-Regular", withExtension: "ttf") else {
            preconditionFailure("Font not found")
        }

        var error: Unmanaged<CFError>?

        CTFontManagerRegisterFontsForURL(
            fontURL as CFURL,
            .process,
            &error
        )

        if let error {
            preconditionFailure(String(describing: error))
        }

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}
}
