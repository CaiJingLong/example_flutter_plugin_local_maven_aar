#import "ExampleForFlutterPluginLocalMavenPlugin.h"
#if __has_include(<example_for_flutter_plugin_local_maven/example_for_flutter_plugin_local_maven-Swift.h>)
#import <example_for_flutter_plugin_local_maven/example_for_flutter_plugin_local_maven-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "example_for_flutter_plugin_local_maven-Swift.h"
#endif

@implementation ExampleForFlutterPluginLocalMavenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExampleForFlutterPluginLocalMavenPlugin registerWithRegistrar:registrar];
}
@end
