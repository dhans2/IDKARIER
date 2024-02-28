part of 'view.dart';

class ViewRegister extends StatelessWidget {

  final RegisterControllers _registerControllers = Get.put(RegisterControllers());
  ViewRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(context)
    );
  }

  Widget _body(BuildContext context){
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 22,),
                    Center(
                      child: Text(
                        'Register',
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
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
                                controller: _registerControllers.firstname,
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
                                controller: _registerControllers.lastname,
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
                        controller: _registerControllers.username,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Password',
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
                        controller: _registerControllers.password,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Apa makanan kesukaan kamu ?',
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
                        controller: _registerControllers.validationOne,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Apa warna kesukaan kamu ?',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    _dropDown(),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Register sebagai ?',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    _dropDownRole()
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Saya sudah memiliki akun,",
                          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
                        ),
                        GestureDetector(
                          onTap: (){_registerControllers.handleBackToLogin();},
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                                color: Color(0xFF239BD8),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8,),
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
                        onPressed: (){_registerControllers.handleRegister();},
                        child: Text("Register"),
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

  Widget _dropDown(){
    return Obx((){
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blueAccent),
            color: Colors.white
        ),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(18),
          focusColor: Colors.white,
          underline: const SizedBox(),
          iconSize: 26,
          isExpanded: true,
          value: _registerControllers.valueColor.value,
          items: _registerControllers.listColor.map(buildMenuItem).toList(),
          onChanged: (value){
            _registerControllers.handleValue(value);
          },
        ),
      );
    });
  }

  DropdownMenuItem<String> buildMenuItem(String item){
    return DropdownMenuItem(
      onTap: (){
        // homePageController.handleAnimationChangeValue();
      },
      value: item,
      child: Text(item),
    );
  }

  Widget _dropDownRole(){
    return Obx((){
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blueAccent),
            color: Colors.white
        ),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(18),
          focusColor: Colors.white,
          underline: const SizedBox(),
          iconSize: 26,
          isExpanded: true,
          value: _registerControllers.selectValueRole.value,
          items: _registerControllers.listRoleDropDownMenuItem.value,
          onChanged: (String? value) {
            _registerControllers.handleValueRole(value);
            _registerControllers.handleIdRole(value);
          },
        ),
      );
    });
  }
}