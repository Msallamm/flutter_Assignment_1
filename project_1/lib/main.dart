import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project_1',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 96, 39, 111),
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/Logo.png'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Text(
            'Sign In',
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF1F2C37),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(top: 43, left: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage('lib/assets/Description.png'),
              ),
            ),
          ),
          SizedBox(height: 48),
          Image(
            image: AssetImage('lib/assets/Sign in.png'),
          ),
          SizedBox(height: 32),
          Image(
            image: AssetImage('lib/assets/Sign in Buttom.png'),
          ),
          SizedBox(height: 16),
          Text(
            'Don’t have an account? Sign Up',
            style: TextStyle(fontSize: 16.0, color: Color(0xFF8E8E8E)),
          ),
          SizedBox(height: 24),
          Text(
            'Or Sign In with',
            style: TextStyle(fontSize: 14.0, color: Color(0xFF9CA4AB)),
          ),
          SizedBox(height: 14),
          Image(
            image: AssetImage('lib/assets/Icons.png'),
          ),
        ],
      ),
    );
  }
}
