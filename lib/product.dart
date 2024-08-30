import 'package:image_picker/image_picker.dart';

class Images {
  Future<String?> getImageUrl() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Construct the URI with 'file://' scheme and device's local file system as the host
      print("=================================");
      print(image.mimeType);
      print("=================================");
      return 'file://${XFile}';
    } else {
      return null;
    }
  }
}
