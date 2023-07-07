// import 'package:image_picker/image_picker.dart';

// class ImagePicker {
//   static Future<List<XFile>> pickedImage() async {
//     final ImagePicker picker = ImagePicker();
//     final images = await picker.pickMultipleMedia();
//     return images;
//   }

//   pickMultipleMedia() {}
// }

import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<List<XFile>?> pickImages() async {
    final images = await _picker.pickMultiImage(imageQuality: 5);
    return images;
  }
}
