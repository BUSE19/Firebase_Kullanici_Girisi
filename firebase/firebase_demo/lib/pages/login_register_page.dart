import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/service/auth.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLogin =
      true; //Login yapmak istediğimi yada register yapmak istediğii belirtiyor
  String? errorMessage;

  Future<void> createUser() async {
    try {
      await Auth().createUser(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signIn() async {
    try {
      await Auth().sigIn(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),

            //Erros mesaj eğer boş değilse döndür eğer boş isede boş alan dönder
            errorMessage != null
                ? Text(errorMessage!)
                : const SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                if (isLogin) {
                  signIn();
                } else {
                  createUser();
                }
              },
              child: isLogin ? Text("Login") : Text("Register"),
            ),
            //Gesturedetector: Yazdığımız şeylerin fonksiyona bağlanmasını sağlayacak
            GestureDetector(
              onTap: () {
                setState(() {
                  isLogin =
                      !isLogin; //Hesabın yok muna tıkladığım zaman login gitsin register olsun
                });
              },
              child: Text("henüz hesabın yok mu ? Tıkla"),
            ),
          ],
        ),
      ),
    );
  }
}
