import 'package:livelyness_detection/index.dart';

extension MLKitUtils on AnalysisImage {
  InputImage toInputImage() {
    final planeData =
        when(nv21: (img) => img.planes, bgra8888: (img) => img.planes)?.map(
      (plane) {
        return InputImageMetadata(
          size: Size(
            plane.width?.toDouble() ?? 0,
            plane.height?.toDouble() ?? 0,
          ),
          rotation: inputImageRotation,
          format: inputImageFormat,
          bytesPerRow: plane.bytesPerRow,
        );
      },
    ).toList();

    return when(
      nv21: (image) {
        return InputImage.fromBytes(
          bytes: image.bytes,
          metadata: InputImageMetadata(
            size: size,
            rotation: inputImageRotation,
            format: inputImageFormat,
            bytesPerRow: planeData!.first.bytesPerRow,
          ),
          // inputImageData: InputImageData(
          //   imageRotation: inputImageRotation,
          //   inputImageFormat: InputImageFormat.nv21,
          //   planeData: planeData,
          //   size: image.size,
          // ),
        );
      },
      bgra8888: (image) {
        final inputImageData = InputImageMetadata(
          size: size,
          rotation: inputImageRotation,
          format: inputImageFormat,
          bytesPerRow: planeData!.first.bytesPerRow,
        );

        return InputImage.fromBytes(
          bytes: image.bytes,
          metadata: inputImageData,
        );
      },
    )!;
  }

  InputImageRotation get inputImageRotation =>
      InputImageRotation.values.byName(rotation.name);

  InputImageFormat get inputImageFormat {
    switch (format) {
      case InputAnalysisImageFormat.bgra8888:
        return InputImageFormat.bgra8888;
      case InputAnalysisImageFormat.nv21:
        return InputImageFormat.nv21;
      default:
        return InputImageFormat.yuv420;
    }
  }
}
