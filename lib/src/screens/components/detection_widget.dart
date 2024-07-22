import 'package:livelyness_detection/index.dart';

class PreviewDecoratorWidget extends StatelessWidget {
  final CameraState cameraState;
  final Stream<FaceDetectionModel> faceDetectionStream;
  final PreviewSize previewSize;
  final Rect previewRect;
  final Color? detectionColor;

  const PreviewDecoratorWidget({
    super.key,
    required this.cameraState,
    required this.faceDetectionStream,
    required this.previewSize,
    required this.previewRect,
    this.detectionColor,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: StreamBuilder(
        stream: cameraState.sensorConfig$,
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return StreamBuilder<FaceDetectionModel>(
              stream: faceDetectionStream,
              builder: (_, faceModelSnapshot) {
                if (!faceModelSnapshot.hasData) return const SizedBox();
                return CustomPaint(
                  painter: AndroidFaceDetectorPainter(
                    model: faceModelSnapshot.requireData,
                    previewSize: previewSize,
                    previewRect: previewRect,
                    isBackCamera: snapshot.requireData.sensors.contains(
                      Sensor.position(
                        SensorPosition.back,
                      ),
                    ),
                    detectionColor: detectionColor,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
