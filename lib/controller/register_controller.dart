part of 'controller.dart';
//
// class RegisterController extends GetxController {
//
//   final TextEditingController firstname = TextEditingController();
//   final TextEditingController lastname = TextEditingController();
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//
//   void handleRegister() async{
//     try {
//       var response = await UserService.registerUser(firstname.text, lastname.text, username.text, password.text);
//       if(response.value.status){
//         Get.snackbar("Information", "${response.value.message}", backgroundColor: Colors.blueAccent, colorText: Colors.white);
//         Get.to(() => LoginView());
//       } else {
//         Get.snackbar("Information", "${response.value.message}", backgroundColor: Colors.redAccent, colorText: Colors.white);
//       }
//       clearInput();
//     }catch(e){
//       print(e);
//     }
//   }
//
//
//   void handleBackToLogin(){
//     clearInput();
//     Get.to(() => LoginView());
//   }
//
//   void clearInput(){
//     firstname.clear();
//     lastname.clear();
//     username.clear();
//     password.clear();
//   }
// }