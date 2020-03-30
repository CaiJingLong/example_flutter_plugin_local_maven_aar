import Flutter
import UIKit

public class SwiftExampleForFlutterPluginLocalMavenPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "example_for_flutter_plugin_local_maven", binaryMessenger: registrar.messenger())
    let instance = SwiftExampleForFlutterPluginLocalMavenPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
