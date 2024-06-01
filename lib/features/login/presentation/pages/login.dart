import 'package:flutter/material.dart';
import 'package:kajian_sunnah/features/login/domain/usecases/login.dart';
import 'package:kajian_sunnah/features/login/presentation/pages/register.dart';
import 'package:kajian_sunnah/features/login/presentation/widgets/headline.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF54FFFF),
              Color(0xFF5484FF),
            ],
          ),
        ),
        child: ListView(
          children: [
            const Headline(),
            Column(
              children: [
                const SizedBox(height: 60),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: TextFormField(
                    controller: emailController
                      ..text = "ahmadmundhofa@gmail.com",
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Enter your username or email',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: TextFormField(
                    controller: passwordController..text = "S0m3Un1Qv3@Pass",
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: 'Enter your password',
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    LoginService()
                        .login(emailController.text, passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFF4285F4),
                    fixedSize: const Size(280, 40),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 120, right: 120),
                  child: Divider(
                    thickness: 3,
                    height: 30,
                    color: Color(0xFFB2BAFD),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const Register();
                          }),
                        )
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF3780FB),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF3780FB),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xFF3780FB),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF3780FB),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
