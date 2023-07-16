import 'package:grocery_app/screens/image_picker/service/image_picker_service.dart';

import '../../../common/base/base_service.dart';
import '../repository/image_picker_repository.dart';

class ImagePickerServiceImpl extends BaseService<ImagePickerRepository> implements ImagePickerService {
  ImagePickerServiceImpl(super.repository);

  @override
  Future<List<String>> uploadImages({required List<String> paths}) {
    return repository.uploadImages(paths: paths);
  }

}