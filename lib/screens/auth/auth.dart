import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:uno_app/screens/lobby/lobby.dart';

class AuthScreen extends StatelessWidget {
  Duration get loginTime => const Duration(milliseconds: 2250);
  const AuthScreen({ super.key });

  Future<String?> _handleLogin(LoginData data) {
    return Future(() => null);
  }

  Future<String?> _handleSignup(SignupData data) {
    debugPrint(data.additionalSignupData.toString());
    return Future(() => "null");
  }

  @override
  Widget build(BuildContext context) {
    const inputBorder = BorderRadius.vertical(
      bottom: Radius.circular(10.0),
      top: Radius.circular(20.0),
    );

    return FlutterLogin(
      onRecoverPassword: (String name) => Future(() => null),
      logo: const AssetImage('assets/img/uno_logo.png'),
      validateUserImmediately: false,
      hideForgotPasswordButton: true,
      onSignup: _handleSignup,
      onLogin: _handleLogin,
      logoTag: "uno_logo",
      
      onSubmitAnimationCompleted: () {        
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => const Lobby(),
        ));
      },
      
      theme: LoginTheme(
        accentColor: const Color.fromARGB(45, 67, 67, 67),
        primaryColor: Colors.teal,
        errorColor: Colors.red,

        bodyStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
        ),
        
        textFieldStyle: const TextStyle(
          shadows: [Shadow(color: Colors.yellow, blurRadius: 2)],
          color: Colors.yellow,
        ),

        buttonStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.yellow,
        ),

        cardTheme: CardTheme(
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
          margin: const EdgeInsets.only(top: 15),
          color: Colors.yellow.shade100,
          elevation: 5,
        ),

        inputTheme: InputDecorationTheme(
          fillColor: Colors.purple.withOpacity(.1),
          labelStyle: const TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.zero,
          filled: true,
          
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade700, width: 4),
            borderRadius: inputBorder,
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade400, width: 5),
            borderRadius: inputBorder,
          ),
          
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade700, width: 7),
            borderRadius: inputBorder,
          ),
          
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade400, width: 8),
            borderRadius: inputBorder,
          ),
          
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 5),
            borderRadius: inputBorder,
          ),
        ),

        buttonTheme: LoginButtonTheme(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.pinkAccent,
          highlightColor: Colors.lightGreen,
          splashColor: Colors.purple,
          highlightElevation: 6.0,
          elevation: 9.0,
        ),
      ),
    );
  }
}
