part of 'controller.dart';
//
// class HomeController extends GetxController {
//
//   void handleGotoQuizPengelola(){
//     Get.to(() => QuizPengelolaView());
//   }
//
//   void handleGotoQuizResult(){
//     Get.to(() => ResultSurveyView());
//   }
//
// }
//
// class QuizController extends GetxController {
//   final LoginController loginController = Get.put(LoginController());
//   final quiz = QuizSuccess(
//       status: false,
//       pengelola: [Pengelola(id_category: 1, id_question: 2, question: "question")],
//       medsos: [Medsos(id_category: 1, id_question: 2, question: "question")],
//       organisasi: [Organisasi(id_category: 1, id_question: 2, question: "question")],
//       administrasi: [Administarasi(id_category: 1, id_question: 2, question: "question")],
//       event: [Event(id_category: 1, id_question: 1, question: "question")],
//       pengembangan: [Pengembangan(id_category: 1, id_question: 2, question: "question")]
//   ).obs;
//
//   final indexOne = 0.obs;
//   final idOption = 1.obs;
//
//   final TextEditingController feedbackPengelola = TextEditingController();
//
//   void handleOptionSangatSetuju(){
//     idOption.value = 1;
//     Get.snackbar("Information", "Anda Memilih Sangat Setuju");
//   }
//
//   void handleOptionSetuju(){
//     idOption.value = 2;
//     Get.snackbar("Information", "Anda Memilih Setuju");
//   }
//
//   void handleOptionTidakSetuju(){
//     idOption.value = 3;
//     Get.snackbar("Information", "Anda Memilih Tidak Setuju");
//   }
//
//   void handleOptionSangatTidakSetuju(){
//     idOption.value = 4;
//     Get.snackbar("Information", "Anda Memilih Sangat Tidak Setuju");
//   }
//
//   void handlePostSurvey(int idQuestion) async {
//     try {
//       var response = await QuizService.createSurvey(loginController.user.value.user.id_user, idQuestion, idOption.value);
//       print(response.value.message);
//       if(response.value.status){
//         handleNext();
//       }
//     }catch(e){
//       print(e);
//     }
//   }
//
//   void handlePostFeedback() async {
//     try {
//       var response = await QuizService.createFeedback(loginController.user.value.user.id_user, quiz.value.pengelola[0].id_category, feedbackPengelola.text);
//       if(response.value.status){
//         Get.snackbar("Information", "Terimakasi Feedback yang Anda Berikan");
//         Get.to(() => FinishSurveyView());
//       }
//
//     }catch(e){
//       print(e);
//     }
//   }
//
//
//   void handleNext(){
//     if(indexOne.value < quiz.value.pengelola.length - 1){
//       indexOne.value = indexOne.value + 1;
//     } else {
//       Get.to(() => QuizPengelolaFeedbackView());
//     }
//     print(indexOne.value);
//   }
//
//   @override
//   onInit(){
//     readQuiz();
//     super.onInit();
//   }
//   void readQuiz() async {
//     try {
//       var response = await QuizService.readAllQuestion();
//       if(response.value.status){
//         quiz.update((_) {
//           quiz.value.pengelola = response.value.pengelola;
//           quiz.value.medsos = response.value.medsos;
//           quiz.value.organisasi = response.value.organisasi;
//           quiz.value.event = response.value.event;
//           quiz.value.administrasi = response.value.administrasi;
//           quiz.value.pengembangan = response.value.pengembangan;
//         });
//       }
//     }catch(e){
//       print(e);
//     }
//   }
// }