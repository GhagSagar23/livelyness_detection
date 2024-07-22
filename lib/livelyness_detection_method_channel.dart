import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'livelyness_detection_platform_interface.dart';

/// An implementation of [LivelynessDetectionPlatform] that uses method channels.
class MethodChannelLivelynessDetection extends LivelynessDetectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('livelyness_detection');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
