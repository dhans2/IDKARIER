part of 'view.dart';

class WelcomeView extends StatelessWidget {
  final WelcomeController welcomeController = Get.put(WelcomeController());
  WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(context),
    );
  }

  AppBar _appbar(){
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: const [],
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _body(BuildContext context){
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_appLogo(), _header(context), _actionButton(context, ()=> {}, () => {})],
          ),
        ),
      ),
    );
  }

  Widget _appLogo(){
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        width: 300,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _header(BuildContext context){
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'iDEAMART',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
              Text(
                '.',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontFamily: 'Poppins',
                  color: Colors.red,
                  fontSize: 35,
                ),
              ),
            ],
          ),
          Text(
            'Pasarnya ide, salurkan idemu agar membuat perubahan baru',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontFamily: 'Poppins',
                fontSize: 14
            ),
          )
        ],
      ),
    );
  }

  Widget _actionButton(BuildContext context, Function onPressLogin, Function onPressRegister){
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 1),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){welcomeController.handleToLogin();},
              child: const Text("Masuk"),
            ),
          ),
          const SizedBox(height: 8,),
          GestureDetector(
            onTap: (){welcomeController.handleToRegister();},
            child: Text(
              'Daftar',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontFamily: 'Poppins',
                color: const Color(0xFF239BD8),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}