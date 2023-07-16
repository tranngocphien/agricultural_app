import 'package:dio/dio.dart';
import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/screens/image_picker/repository/image_picker_repository.dart';

class ImagePickerRepositoryImpl extends BaseRepository
    implements ImagePickerRepository {
  @override
  Future<List<String>> uploadImages({required List<String> paths}) async {
    var formData = FormData();
    for (var file in paths) {
      formData.files.addAll([
        MapEntry("files", await MultipartFile.fromFile(file)),
      ]);
    }
    return postData("/api/images/upload", (json) => (json["data"] as List).map((e) => e.toString()).toList(), data: formData);
  }

}