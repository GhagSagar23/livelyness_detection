import 'dart:convert';

class CapturedImage {
  final String imgPath;
  final bool didCaptureAutomatically;
  CapturedImage({
    required this.imgPath,
    required this.didCaptureAutomatically,
  });

  CapturedImage copyWith({
    String? imgPath,
    bool? didCaptureAutomatically,
  }) {
    return CapturedImage(
      imgPath: imgPath ?? this.imgPath,
      didCaptureAutomatically:
          didCaptureAutomatically ?? this.didCaptureAutomatically,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imgPath': imgPath});
    result.addAll({'didCaptureAutomatically': didCaptureAutomatically});

    return result;
  }

  factory CapturedImage.fromMap(Map<String, dynamic> map) {
    return CapturedImage(
      imgPath: map['imgPath'] ?? '',
      didCaptureAutomatically: map['didCaptureAutomatically'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CapturedImage.fromJson(String source) =>
      CapturedImage.fromMap(json.decode(source));

  @override
  String toString() =>
      'CaptureImage(imgPath: $imgPath, didCaptureAutomatically: $didCaptureAutomatically)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CapturedImage &&
        other.imgPath == imgPath &&
        other.didCaptureAutomatically == didCaptureAutomatically;
  }

  @override
  int get hashCode => imgPath.hashCode ^ didCaptureAutomatically.hashCode;
}
