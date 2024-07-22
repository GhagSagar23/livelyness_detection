import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'livelyness_detection_method_channel.dart';

abstract class LivelynessDetectionPlatform extends PlatformInterface {
  /// Constructs a LivelynessDetectionPlatform.
  LivelynessDetectionPlatform() : super(token: _token);

  static final Object _token = Object();

  static LivelynessDetectionPlatform _instance =
      MethodChannelLivelynessDetection();

  /// The default instance of [LivelynessDetectionPlatform] to use.
  ///
  /// Defaults to [MethodChannelLivelynessDetection].
  static LivelynessDetectionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LivelynessDetectionPlatform] when
  /// they register themselves.
  static set instance(LivelynessDetectionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
