import 'package:authlogin/Controllers/firebaseController.dart';
import 'package:authlogin/Screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController UserEmail = new TextEditingController();
    TextEditingController UserPass = new TextEditingController();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/bgback.jpg'),
                fit: BoxFit.cover,
                opacity: 0.1)),
        width: double.infinity,
        height: double.infinity,

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              const Image(
                image: AssetImage('assets/images/logo.png'),
                width: 300,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                      ),
                      controller: UserEmail,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                      controller: UserPass,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              FireBaseAuthWithEmail.signInFirebase(
                                  UserEmail.text, UserPass.text, context);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfffdb700),
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text("Login")),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password !",
                              style: TextStyle(color: Color(0xfffdb700)),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );

                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffad62f4),
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text("Create Account"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Need Help ?",
                    style: TextStyle(color: Color(0xfffdb700)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
