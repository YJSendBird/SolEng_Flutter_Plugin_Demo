import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sendbird_chat/sendbird_chat.dart';

void main() {
  const MethodChannel channel = MethodChannel('sendbird_chat');

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
    expect(await SendbirdChat.platformVersion, '42');
  });
}
