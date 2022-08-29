import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 14, 136),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(),
            const Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton.mini(
                  btnColor: Colors.white,
                  buttonType: ButtonType.linkedin,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.github,
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  "Or user your email account...",
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 172, 173),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 7.5,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Email",
                      iconColor: Colors.white,
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 7.5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      iconColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 172, 173),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                alignment: Alignment.center,
                fixedSize: MaterialStateProperty.all(const Size(325, 45)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child: const Text(
                "SIGN IN",
                style: TextStyle(
                    color: Color.fromARGB(255, 75, 14, 136), fontSize: 20),
              ),
            ),
            const Text(
              """Enter your personal details 
and start your journey with us""",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            RichText(
              text: TextSpan(
                text: "SIGN UP",
                recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('AAAAAAAAAAA');
                },
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: TextDecoration.underline
                )
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
