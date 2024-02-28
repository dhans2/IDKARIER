part of 'view.dart';

class ForgetPassword extends StatelessWidget {
  final ForgetPasswordController _forgetPasswordController = Get.put(ForgetPasswordController());

  ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _body(context),
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
                    const SizedBox(height: 54,),
                    Center(
                      child: Text(
                        'Forget Password',
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
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
                        controller: _forgetPasswordController.username,
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
                        controller: _forgetPasswordController.validationOne,
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
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: _forgetPasswordController.validationTwo,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Silahkan masukkan password baru anda',
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
                        controller: _forgetPasswordController.password,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Saya tidak memiliki akun,",
                          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
                        ),
                        GestureDetector(
                          onTap: (){_forgetPasswordController.handleToRegister();},
                          child: const Text(
                            "DAFTAR",
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
                        onPressed: (){_forgetPasswordController.handleForgetPassword();},
                        child: const Text("Update Password"),
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