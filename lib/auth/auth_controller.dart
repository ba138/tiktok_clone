import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  static AuthController instanceAuth = Get.find();
  late Rx<File?> _pickedImage;
  File? get profileImage => _pickedImage.value;
  void choseImageFromGallery() async {
    final pickedImageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImageFile != null) {
      Get.snackbar(
          "Profile Image", "You have succesfully selected the profile image.");
    }
    _pickedImage = Rx<File?>(File(pickedImageFile!.path));
  }
}
