part of 'view.dart';
//
// class HomeViews extends StatelessWidget {
//
//   final LoginControllers loginController = Get.put(LoginControllers());
//   final QuizController quizController = Get.put(QuizController());
//   final HomeController homeController = Get.put(HomeController());
//   final ResultSurveyController resultSurveyController = Get.put(ResultSurveyController());
//
//   HomeViews({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: _body(context)
//     );
//   }
//
//   // Widget _bodyAdmin(BuildContext context){
//   //   return SafeArea(
//   //     child: Container(
//   //       width: double.infinity,
//   //       height: double.infinity,
//   //       decoration: BoxDecoration(
//   //         color: Color(0xFFEEEEEE),
//   //       ),
//   //       child: SingleChildScrollView(
//   //         child: Column(
//   //           mainAxisSize: MainAxisSize.max,
//   //           mainAxisAlignment: MainAxisAlignment.start,
//   //           children: [
//   //             Stack(
//   //               children: [
//   //                 _background(),
//   //                 Padding(
//   //                     padding: EdgeInsetsDirectional.fromSTEB(50, 0 , 50, 0),
//   //                     child: _header(context)
//   //                 ),
//   //                 // Padding(
//   //                 //     padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
//   //                 //     child: _jumbotron()
//   //                 // ),
//   //                 // Padding(
//   //                 //     padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
//   //                 //     child: _containerBody(context)
//   //                 // ),
//   //               ],
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }
//
//   Widget _body(BuildContext context){
//     return SafeArea(
//       child: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           color: Color(0xFFEEEEEE),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   _background(),
//                   Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(50, 0 , 50, 0),
//                       child: _header(context)
//                   ),
//                   Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
//                       child: _jumbotron()
//                   ),
//                   Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
//                       child: _containerBody(context)
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _mandatory(BuildContext context){
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//           child: Text(
//             'Mandatory',
//             style: Theme.of(context).textTheme.headline1?.copyWith(
//                 fontFamily: 'Poppins',
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//         Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Pengelola
//                   InkWell(
//                     onTap: (){homeController.handleGotoQuizPengelola();},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFDC043),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.settings_outlined,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Pengelola',
   //                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Pengelola
//
//                   // Media Sosial
//                   InkWell(
//                     onTap: (){homeController.handleGotoQuizResult();},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFD34539),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.people_alt_outlined,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Media Sosial',
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Media Sosial
//
//                   // Milik Perusahaan
//                   InkWell(
//                     onTap: (){print("abc");},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFF1D9F63),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.domain,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Milik Perusahaan',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Milik Perusahaan
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Administrasi
//                   InkWell(
//                     onTap: () {},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFF239BD8),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.credit_card_rounded,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Administrasi',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Administrasi
//
//                   // Event
//                   InkWell(
//                     onTap: (){},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFF1E9E65),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.local_play,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Event',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Event
//
//                   // Pengembangan Diri
//                   InkWell(
//                     onTap: () {},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFFBF43),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.person_add_sharp,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Pengembangan Diri',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 9,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Pengembangan Diri
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _background(){
//     return Container(
//       width: double.infinity,
//       height: 110,
//       decoration: BoxDecoration(
//         color: Color(0xFF239BD8),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(45),
//           bottomRight: Radius.circular(45),
//           topLeft: Radius.circular(0),
//           topRight: Radius.circular(0),
//         ),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(45),
//           bottomRight: Radius.circular(45),
//           topLeft: Radius.circular(0),
//           topRight: Radius.circular(0),
//         ),
//         child: SvgPicture.asset(
//           'assets/images/jumbotron_bg.svg',
//           width: double.infinity,
//           height: 100,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
//
//   Widget _header(BuildContext context){
//     return Container(
//       width: double.infinity,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Color(0x00EEEEEE),
//         borderRadius: BorderRadius.circular(14),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               InkWell(
//                 onTap: (){Get.to(() => ProfileView());},
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(45),
//                   child: (loginController.user.value.user.profile_picture.isEmpty) ?
//                   Image.asset('assets/images/logo-uin.png', width: 30, height: 30, fit: BoxFit.cover,) :
//                   Image.network('http://10.0.2.2:7000/${loginController.user.value.user.profile_picture}'),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                 child: InkWell(
//                   onTap: (){},
//                   child: Obx((){
//                     return Text(
//                       'Hai, ${loginController.user.value.user.firstname}',
//                       style:Theme.of(context).textTheme.bodyText1?.copyWith(
//                         fontFamily: 'Poppins',
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   })
//                 ),
//               ),
//             ],
//           ),
//
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 // NotificationIcon
//                 Icon(
//                   Icons.notifications,
//                   color: Colors.white,
//                   size: 30,
//                 ),
//
//                 // LogoutButton
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
//                   child: InkWell(
//                     onTap: () async {
//                       await showDialog(
//                         context: context,
//                         builder: (alertDialogContext) {
//                           return AlertDialog(
//                             title: Text('Peringatan'),
//                             content: Text('Ingin logout ?'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () =>
//                                     Navigator.pop(alertDialogContext),
//                                 child: Text('Batal'),
//                               ),
//                               TextButton(
//                                 onPressed: (){Get.to(() => WelcomeView());},
//                                 child: Text('Ya'),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     },
//                     child: Icon(
//                       Icons.logout,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _jumbotron(){
//     return Material(
//       color: Colors.transparent,
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(14),
//       ),
//       child: Container(
//         width: double.infinity,
//         height: 100,
//         decoration: BoxDecoration(
//           color: Color(0xFFEEEEEE),
//           borderRadius: BorderRadius.circular(14),
//         ),
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 'assets/images/logo-uin.png',
//                 width: 100,
//                 height: 100,
//                 fit: BoxFit.contain,
//               ),
//               Image.asset(
//                 'assets/images/pusat-karir-uin.png',
//                 width: 150,
//                 height: 100,
//                 fit: BoxFit.contain,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _choiceBased(BuildContext context){
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//           child: Text(
//             'Choice Based',
//             style: Theme.of(context).textTheme.headline1?.copyWith(
//                 fontFamily: 'Poppins',
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//         Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Servis Data
//                   InkWell(
//                     onTap: () {},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 155,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFFFBF43),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.work_outline_rounded,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Servis Data',
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Servis Data
//
//                   // Media Partner
//                   InkWell(
//                     onTap: (){},
//                     child: Material(
//                       color: Colors.transparent,
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Container(
//                         width: 155,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFD34539),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.live_tv,
//                                 color: Colors.white,
//                                 size: 32,
//                               ),
//                               Divider(
//                                 color: Colors.white,
//                                 thickness: 1,
//                               ),
//                               Text(
//                                 'Media Partner',
//                                 style: Theme.of(context).textTheme.headline1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // End of Media Partner
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _containerBody(BuildContext context){
//     return Container(
//       width: double.infinity,
//       height: 550,
//       decoration: BoxDecoration(
//         color: Color(0xFFEEEEEE),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _mandatory(context),
//           _choiceBased(context),
//           Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//               child: _myProgress(context)
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _myProgress(BuildContext context){
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Progress Saya',
//           style: Theme.of(context).textTheme.headline1?.copyWith(
//               fontFamily: 'Poppins',
//               fontSize: 18,
//               fontWeight: FontWeight.bold
//           ),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Material(
//                   color: Colors.transparent,
//                   elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Container(
//                     width: 210,
//                     height: 80,
//                     decoration: BoxDecoration(
//                       color: Color(0xFFEEEEEE),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(45),
//                             child: SvgPicture.asset(
//                               'assets/icons/strongly-agree.svg',
//                               width: 50,
//                               height: 50,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Survei Pengelola',
//                                   style: Theme.of(context).textTheme.headline1?.copyWith(
//                                       fontFamily: 'Poppins',
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold
//                                   ),
//                                 ),
//                                 Expanded(child: Text(
//                                   '1 dari 4 pertanyaan',
//                                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 10,
//                                   ),
//                                 ),),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 5, 0, 0),
//                                   child: Stack(
//                                     children: [
//                                       Container(
//                                         width: 120,
//                                         height: 5,
//                                         decoration: BoxDecoration(
//                                           color: Color(0xFFEEEEEE),
//                                           borderRadius:
//                                           BorderRadius.circular(10),
//                                           border: Border.all(
//                                             color: Color(0xFFC4C4C4),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 80,
//                                         height: 5,
//                                         decoration: BoxDecoration(
//                                           color: Colors.green,
//                                           borderRadius:
//                                           BorderRadius.circular(10),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                   child: Material(
//                     color: Colors.transparent,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Container(
//                       width: 210,
//                       height: 80,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFEEEEEE),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(45),
//                               child: SvgPicture.asset(
//                                 'assets/icons/agree.svg',
//                                 width: 50,
//                                 height: 50,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Expanded(child: Text(
//                                     'Survei Pengelola',
//                                     style: Theme.of(context).textTheme.headline1?.copyWith(
//                                         fontFamily: 'Poppins',
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.bold
//                                     ),
//                                   ),),
//                                   Text(
//                                     '1 dari 4 pertanyaan',
//                                     style: Theme.of(context).textTheme.bodyText1?.copyWith(
//                                       fontFamily: 'Poppins',
//                                       fontSize: 10,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 5, 0, 0),
//                                     child: Stack(
//                                       children: [
//                                         Container(
//                                           width: 120,
//                                           height: 5,
//                                           decoration: BoxDecoration(
//                                             color: Color(0xFFEEEEEE),
//                                             borderRadius:
//                                             BorderRadius.circular(10),
//                                             border: Border.all(
//                                               color: Color(0xFFC4C4C4),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           width: 80,
//                                           height: 5,
//                                           decoration: BoxDecoration(
//                                             color: Colors.green,
//                                             borderRadius:
//                                             BorderRadius.circular(10),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
// }