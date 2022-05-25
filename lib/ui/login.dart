import 'package:flutter/material.dart';
import 'package:my_app/constants/colors.dart';

const loginPageRoutes = '/';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _rememberPassword = false;

  final LinearGradient _linearGradient = const LinearGradient(
    colors: [MyColors.pink_1, MyColors.orange_1],
  );

  void _onChangedRememberPassword(bool? value) {
    setState(() {
      if (value != null) {
        _rememberPassword = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: renderLoginPage(),
      ),
    );
  }

  Widget renderLoginPage() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(top: 24),
                      child: const Text(
                        'SIGN IN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width - 64,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width - 64,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      width: MediaQuery.of(context).size.width - 64,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                              onChanged: (bool? value) {
                                _onChangedRememberPassword(value);
                              },
                              value: _rememberPassword,
                              side: const BorderSide(
                                  color: Colors.orange, width: 2),
                              activeColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )),
                          const Text(
                            'Remember Password',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width - 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.red,
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (bounds) =>
                                _linearGradient.createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                            child: const Text(
                              'GET STARTED',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              primary: Colors.white,
                              onPrimary: Colors.red,
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                            ),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) =>
                                  _linearGradient.createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: Image.asset(
                                'assets/images/icon_fb.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(50, 50),
                                primary: Colors.white,
                                onPrimary: Colors.red,
                                padding: const EdgeInsets.all(10),
                                shape: const CircleBorder(),
                              ),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (bounds) =>
                                    _linearGradient.createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: Image.asset(
                                  'assets/images/icon_twitter.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 24),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.white10),
                        ),
                        child: const Text(
                          'FORGOT PASSWORD?',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.black26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'DONT HAVE ACCOUNT?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.white10),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
