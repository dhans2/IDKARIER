part of 'view.dart';
//
// class RegisterView extends StatelessWidget {
//   final RegisterController registerController = Get.put(RegisterController());
//   RegisterView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: _body(context)
//     );
//   }
//
//   Widget _body(BuildContext context){
//     return Center(
//       child: SingleChildScrollView(
//         child: Container(
//           margin: const EdgeInsets.symmetric(horizontal: 12),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 2),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 54,),
//                     Center(
//                       child: Text(
//                         'Register',
//                         style: Theme.of(context).textTheme.headline1?.copyWith(
//                             fontFamily: 'Poppins',
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(top: 54),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
//                               child: Text(
//                                 'First Name',
//                                 style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                   fontFamily: 'Poppins',
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 12,),
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
//                               child: Text(
//                                 'Last Name',
//                                 style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                   fontFamily: 'Poppins',
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 8),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(color: Colors.blueAccent),
//                                   color: Colors.white
//                               ),
//                               child: TextField(
//                                 controller: registerController.firstname,
//                                 decoration: const InputDecoration(
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 12,),
//                           Expanded(
//                             child: Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(color: Colors.blueAccent),
//                                   color: Colors.white
//                               ),
//                               child: TextField(
//                                 controller: registerController.lastname,
//                                 decoration: const InputDecoration(
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
//                       child: Text(
//                         'Username',
//                         style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.blueAccent),
//                           color: Colors.white
//                       ),
//                       child: TextField(
//                         controller: registerController.username,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 18,),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
//                       child: Text(
//                         'Password',
//                         style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.blueAccent),
//                           color: Colors.white
//                       ),
//                       child: TextField(
//                         controller: registerController.password,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               const SizedBox(height: 100,),
//
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 4),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         const Text(
//                           "Saya sudah memiliki akun,",
//                           style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
//                         ),
//                         GestureDetector(
//                           onTap: (){registerController.handleBackToLogin();},
//                           child: const Text(
//                             "Masuk",
//                             style: TextStyle(
//                                 color: Color(0xFF239BD8),
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: "Poppins"
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(height: 8,),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(48)
//                       ),
//                       margin: const EdgeInsets.symmetric(horizontal: 1),
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12), // <-- Radius
//                           ),
//                         ),
//                         onPressed: (){registerController.handleRegister();},
//                         child: Text("Register"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }