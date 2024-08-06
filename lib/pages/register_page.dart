import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:login_app/component/my_button.dart';
import 'package:login_app/component/my_textfield.dart';
import 'package:login_app/component/square_tile.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/services/auth_services.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp(dialogcontext) async {
    try {
      // if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pop(dialogcontext);
      } else {
        Navigator.pop(dialogcontext);
        // show error message, Password don't match
        showErrorMessage("Password don't match!");
      }
      // pop loading cirlce
    } on FirebaseAuthException catch (e) {
      // pop loading cirlce
      Navigator.pop(dialogcontext);
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
      backgroundColor: Colors.grey[300],
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

                  const SizedBox(height: 1),

                  // Let's create an account for you

                  Text(
                    "Create an account",
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

                  const SizedBox(height: 15),

                  // pass textfield

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    prefixIcon: const Icon(FontAwesome.lock_solid),
                  ),

                  const SizedBox(height: 15),

                  // confirm pass textfield

                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                    prefixIcon: const Icon(FontAwesome.lock_solid),
                  ),

                  const SizedBox(height: 25),

                  //sign in

                  MyButton(
                    text: "Sign up",
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (dialogcontext) {
                          signUserUp(dialogcontext);
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                    },
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
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return LoginPage(
                              onTap: () {},
                            );
                          },
                        )),
                        child: const Text(
                          'Login now',
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
