part of 'view.dart';
//
// class AdminHomeView extends StatelessWidget {
//   final LoginController loginController = Get.put(LoginController());
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF239BD8),
//         automaticallyImplyLeading: false,
//         actions: [],
//         centerTitle: true,
//         elevation: 0,
//       ),
//         backgroundColor: Color(0xFFF5F5F5),
//       body: _body(context),
//     );
//   }
//
//   Widget _body(BuildContext context){
//     return SafeArea(
//       child: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           color: Color(0xFFEEEEEE),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Stack(
//               children: [
//                 _background(),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
//                   child: _header(context),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
//                   child: _jumbotron(),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
//                   child: _category(context),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 GestureDetector(
//                   onTap: (){Get.to(() => AdminListCategoryView());},
//                   child: Container(
//                     margin: const EdgeInsets.only(top: 10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: Colors.blueAccent
//                     ),
//                     child : Text("CRUD CATEGORY"),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){Get.to(() => AdminListQuestionView());},
//                   child: Container(
//                     margin: const EdgeInsets.only(top: 10),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: Colors.blueAccent
//                     ),
//                     child : Text("CRUD CATEGORY"),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
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
//                 onTap: () async {},
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(45),
//                   child: Image.asset(
//                     'assets/images/logo-uin.png',
//                     width: 30,
//                     height: 30,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                 child: InkWell(
//                   onTap: () async {},
//                   child: Text(
//                     'Hai, ${loginController.user.value.user.firstname}',
//                     style:Theme.of(context).textTheme.bodyText1?.copyWith(
//                       fontFamily: 'Poppins',
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
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
//                                 onPressed: () async {},
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
//   Widget _category(BuildContext context){
//     return Container(
//       width: double.infinity,
//       height: 140,
//       decoration: BoxDecoration(),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Kategori',
//             style: Theme.of(context).textTheme.headline1?.copyWith(
//                 fontFamily: 'Poppins',
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () async {Get.to(() => AdminMandatory());},
//                   child: Material(
//                     color: Colors.transparent,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Container(
//                       width: 125,
//                       height: 90,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFFBF43),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Icon(
//                               Icons.warning_amber_rounded,
//                               color: Colors.white,
//                               size: 32,
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               'Mandatoreqtty',
//                               style: Theme.of(context).textTheme.headline1?.copyWith(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.white,
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () async {},
//                   child: Material(
//                     color: Colors.transparent,
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Container(
//                       width: 125,
//                       height: 90,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFD34539),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Icon(
//                               Icons.article_outlined,
//                               color: Colors.white,
//                               size: 32,
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               'Choice Based',
//                               style: Theme.of(context).textTheme.headline1?.copyWith(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.white,
//                                 fontSize: 10,
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
//         ],
//       ),
//     );
//   }
// }