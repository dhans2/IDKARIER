part of "view.dart";

class ProfileViews extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context){
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  _background(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(160, 0, 160, 0),
                    child: GestureDetector(
                      onTap: (){profileController.uploadImage(ImageSource.camera);},
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network('http://192.168.43.57:7000/uploads/profile_picture/1648204189380.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 130, 40, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 650,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: _content(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _background(){
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFF239BD8),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        child: SvgPicture.asset(
          'assets/images/jumbotron_bg.svg',
          width: double.infinity,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _content(BuildContext context){
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 54),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                              child: Text(
                                'First Name',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                              child: Text(
                                'Last Name',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.blueAccent),
                                  color: Colors.white
                              ),
                              child: TextField(
                                controller: profileController.firstname,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.blueAccent),
                                  color: Colors.white
                              ),
                              child: TextField(
                                controller: profileController.lastname,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Username',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: profileController.username,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Email',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: profileController.email,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'No.Hp',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: profileController.profesi,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Profesi',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: profileController.phone,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48)
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: (){profileController.updateUser();},
                        child: Text("Update Profile"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}