import 'package:flutter/material.dart';
import 'package:my_app/constants/colors.dart';

const signUpPageRoutes = '/sign_up';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final LinearGradient _linearGradient = const LinearGradient(
    colors: [MyColors.pink_1, MyColors.orange_1],
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: SingleChildScrollView(
          child: renderSignUpPage(),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() async {
    Navigator.of(context).pop(true);
    return true;
  }

  Widget renderSignUpPage() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [MyColors.orange_1, MyColors.pink_1],
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 52),
            child: Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'CONN',
                style: TextStyle(
                  fontSize: 30,
                  color: MyColors.pink_1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'EXION',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 12),
            child: const Text(
              'Find and Meet people around\nyou to find LOVE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            width: MediaQuery.of(context).size.width - 64,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.red,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => _linearGradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon_fb.png',
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.white,
                      margin: const EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Sign in with Facebook',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width - 64,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.red,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => _linearGradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/icon_twitter.png',
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.white,
                      margin: const EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Sign in with Twitter',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width - 64,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.red,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => _linearGradient.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 12),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white10),
              ),
              child: const Text(
                'ALREADY REGISTED? SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
