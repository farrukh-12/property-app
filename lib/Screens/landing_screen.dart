import 'package:blumo_app/Screens/Splash%20Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Login Screens/login_screen.dart'; // Import your login screen file

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginScreen(); // Call the function to navigate after delay
  }

  void _navigateToLoginScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF4FF),
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/logoblumo.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
