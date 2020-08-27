
import 'dart:async';

import 'package:flutter/services.dart';

class SendbirdChat {
  static const MethodChannel _channel =
      const MethodChannel('sendbird_chat');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
