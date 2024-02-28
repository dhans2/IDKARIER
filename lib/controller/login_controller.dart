part of 'controller.dart';
//
// class LoginController extends GetxController {
//
//   final user = UserLoginSuccess(status: false, message: "un know message", token: "secret value", user: User(username: "username", email: "email", firstname: "firstname", phone: 'phone', lastname: "lastname", id_role: 2, id_user: 1, profesi: "profesi", profile_picture: "profesi",validasi_two: "ab", validasi_one: "ab")).obs;
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//
//   void handleLogin() async{
//     try{
//       var response = await UserService.loginUser(username.text, password.text);
//       if(response.value.status){
//         user.update((_) {
//           user.value.user = response.value.user;
//         });
//
//         if(user.value.user.id_role == 1){
//           Get.to(() => AdminView(), transition: Transition.downToUp, duration: const Duration(seconds: 3));
//         } else {
//           Get.to(() => HomeView(), transition: Transition.downToUp, duration: const Duration(seconds: 3));
//         }
//
//         // clearInput();
//       }else {
//         Get.snackbar("Information", "${response.value.message}", backgroundColor: Colors.redAccent, colorText: Colors.white);
//       }
//       print(user.value.user.username);
//     }catch(e){
//       print(e);
//     }
//   }
//
//   void handleToRegister(){
//     clearInput();
//     Get.to(() => RegisterView());
//   }
//
//   void clearInput(){
//     username.clear();
//     password.clear();
//   }
// }