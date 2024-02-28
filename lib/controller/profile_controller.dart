part of 'controller.dart';

class ProfileController extends GetxController {
  final LoginControllers loginController = Get.put(LoginControllers());
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController profesi = TextEditingController();

  void uploadImage(ImageSource imageSource) async{
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);


      if(image != null) {
        await UserService.uploadFile(image.path, loginController.user.value.user.id_user.toString());
      }
    }catch(e){
      print(e);
    }
  }

  void updateUser() async{
    try {
      var response = await UserService.updateUser(firstname.text, lastname.text, username.text, email.text, phone.text, profesi.text,loginController.user.value.user.id_user.toString());
      print(response.value.status);
      if(response.value.status){
        print("masi");
        Get.back();
        Get.snackbar("Information", response.value.message, backgroundColor: Colors.blueAccent);

      } else {
        Get.back();
        Get.snackbar("Information", response.value.message, backgroundColor: Colors.redAccent);
      }
    }catch(e){
      print(e);
    }
  }

  void setDataUser(){
    firstname.text = loginController.user.value.user.firstname;
    print(loginController.user.value.user.firstname);
  }

  @override
  void onInit(){
    setDataUser();
    super.onInit();
  }
}