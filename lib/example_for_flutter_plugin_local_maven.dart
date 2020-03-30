import 'dart:async';

import 'package:flutter/services.dart';

class ExampleForFlutterPluginLocalMaven {
  static const MethodChannel _channel =
      const MethodChannel('example_for_flutter_plugin_local_maven');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
