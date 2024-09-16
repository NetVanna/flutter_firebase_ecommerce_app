import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../widgets/check_network/network_manager.dart';
import '../../../widgets/full_screen_loading/full_screen_loader.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController(); // Controller for email input
  final firstName = TextEditingController(); // Controller for firstname input
  final lastName = TextEditingController(); // Controller for lastname input
  final userName = TextEditingController(); // Controller for username input
  final phoneNumber = TextEditingController(); // Controller for phone Number input
  final password = TextEditingController(); // Controller for password input
  GlobalKey<FormState> signUpFormKey = GlobalKey<
      FormState>(); //form key for form validator
  Future<void> signUp() async {
    // start loading
    FullScreenLoader.openLoadingDialog(
        "We are processing your information...", Image.asset("") as String);
    // final isConnected = await NetworkManager.instance.isConnected();
  }
}
