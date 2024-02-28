part of 'view.dart';
//
// class LoginView extends StatelessWidget {
//   final LoginController loginController = Get.put(LoginController());
//   LoginView({Key? key}) : super(key: key);
//
//
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
//                         'MASUK',
//                         style: Theme.of(context).textTheme.headline1?.copyWith(
//                             fontFamily: 'Poppins',
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black
//                         ),
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
//                         controller: loginController.username,
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
//                         controller: loginController.password,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 18,),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
//                       child: Text(
//                         'Lupa Password ?',
//                         style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 160,),
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 4),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         const Text(
//                           "Saya tidak memiliki akun,",
//                           style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
//                         ),
//                         GestureDetector(
//                           onTap: (){loginController.handleToRegister();},
//                           child: const Text(
//                             "DAFTAR",
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
//                         onPressed: (){loginController.handleLogin();},
//                         child: const Text("Masuk"),
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
//
// }