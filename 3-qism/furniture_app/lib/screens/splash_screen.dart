import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/splash_bg.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 54,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text(
                      'Find the best home furniture for your room.',
                      style: TextStyle(
                        fontFamily: 'Hauora',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(context, '/home'),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromRGBO(121, 147, 174, 1),
                    ),
                    child: Image.asset(
                      'assets/icons/arrow_right.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
