import 'package:flutter/material.dart';
import 'package:kajian_sunnah/features/login/presentation/pages/login.dart';
import 'package:kajian_sunnah/features/login/presentation/pages/register.dart';
import 'package:kajian_sunnah/features/login/presentation/widgets/headline.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 35),
                const Text(
                  'Aplikasi ini hadir untuk mendukung\naktifitas kaum muslimin mendapatkan\nagenda, artikel dan pengumuman seputar\nkajian sunnah',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Register();
                      }),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                    fixedSize: const Size(280, 40),
                  ),
                  child: const Text(
                    'Create an account',
                    style: TextStyle(
                      color: Color(0xFF4285F4),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Login();
                      }),
                    );
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
                InkWell(
                  onTap: () => {},
                  child: const Text(
                    'Continue without sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
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
