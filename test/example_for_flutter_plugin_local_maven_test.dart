import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example_for_flutter_plugin_local_maven/example_for_flutter_plugin_local_maven.dart';

void main() {
  const MethodChannel channel = MethodChannel('example_for_flutter_plugin_local_maven');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ExampleForFlutterPluginLocalMaven.platformVersion, '42');
  });
}
