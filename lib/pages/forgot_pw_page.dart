import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/component/my_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('Password Reset link is sent'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      ),
      backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'lib/images/dept_link_logo.png',
                height: 200,
                width: 500,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Enter your Email and we'll send you a password reset link",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                prefixIcon: const Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: passwordReset,
                color: Colors.deepPurple[200],
                height: 40,
                child: const Text("Reset Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
