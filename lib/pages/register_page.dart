// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/auth_services.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  // RegEx for password validation (1 letter, 1 number, 1 symbol)
  final RegExp passwordRegEx = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$',
  );

  // Function to check if the password is valid
  bool isValidPassword(String password) {
    return passwordRegEx.hasMatch(password);
  }

  void register() async {
    final _authService = AuthService();

    // Check if passwords match
    if (passwordcontroller.text != confirmpasswordcontroller.text) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match"),
        ),
      );
      return;
    }

    // Check if the password is valid
    if (!isValidPassword(passwordcontroller.text)) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Invalid Password'),
          content: Text(
              'Password must contain at least 1 letter, 1 number, and 1 symbol. length of password must not be less than 8'),
        ),
      );
      return;
    }

    // Try to register if password is valid and matches
    try {
      await _authService.signUpWithEmailPassword(
        emailcontroller.text,
        passwordcontroller.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.app_registration_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 25),
                Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  obsecureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obsecureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: confirmpasswordcontroller,
                  hintText: 'Confirm password',
                  obsecureText: true,
                ),
                const SizedBox(height: 10),
                MyButton(
                  text: 'Sign up',
                  onTap: register,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
