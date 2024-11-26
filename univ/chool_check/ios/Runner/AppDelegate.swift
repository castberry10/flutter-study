import Flutter
import UIKit
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    if let googleMapsAPIKey = ProcessInfo.processInfo.environment["GOOGLE_MAPS_API_KEY"] {
      GMSServices.provideAPIKey(googleMapsAPIKey)
    } else {
      print("⚠️ Google Maps API Key is missing in the environment variables!")
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
