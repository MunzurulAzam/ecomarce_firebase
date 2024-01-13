
part 'image_model.freezed.dart';
part 'image_model.g.dart';

class ImageModel with _$ImageModel{
  factory ImageModel({
    required String imageName,
    required String directoryName,
    required String downloadUrl,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
