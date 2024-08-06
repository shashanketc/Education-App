import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:login_app/component/my_button.dart';
import 'package:login_app/component/my_textfield.dart';
import 'package:login_app/component/square_tile.dart';
import 'package:login_app/pages/forgot_pw_page.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/register_page.dart';
import 'package:login_app/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {
    // loading circle

    // try sign in

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return HomePage();
        },
      ));
    } on FirebaseAuthException catch (e) {
      //Navigator.pop(dicontext);
      showErrorMessage(e.code);
    }
  }

  // wrong email message pop up

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 1),

                  // app title

                  //logo
                  Container(
                    width: 500,
                    height: 200,
                    child: Image.asset('lib/images/dept_link_logo.png'),
                  ),

                  //logo end

                  const SizedBox(height: 1),

                  // welcome back

                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // email textfield

                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    prefixIcon: const Icon(Icons.email),
                  ),

                  const SizedBox(height: 18),

                  // pass textfield

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    prefixIcon: const Icon(FontAwesome.lock_solid),
                  ),

                  const SizedBox(height: 15),

                  // forget pass

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const ForgotPasswordPage();
                            },
                          )),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  //sign in

                  MyButton(
                    text: "Sign in",
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 50),

                  //or continue

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // google

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(
                          onTap: () => AuthService().signInWithGoogle(),
                          imagePath: 'lib/images/google.png')
                    ],
                  ),

                  const SizedBox(height: 20),

                  //register

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage(
                              onTap: () {},
                            );
                          },
                        )),
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
