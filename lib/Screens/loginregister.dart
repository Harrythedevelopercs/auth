import 'package:authlogin/Screens/login.dart';
import 'package:authlogin/Screens/register.dart';
import 'package:flutter/material.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/bgback.jpg'),
                fit: BoxFit.cover,
                opacity: 0.1)),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 300,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfffdb700),
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffad62f4),
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
