import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('majascan');

  setUp(() {
    channel.setMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMethodCallHandler(null);
  });

//  test('getPlatformVersion', () async {
//    expect(await Majascan.platformVersion, '42');
//  });
}
