import 'package:fiverr_complaint_app/Screens/pending_user_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {
    Future.delayed(Duration(microseconds: 1),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PendingUser(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Place Your Log',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
          Text('Tagline here',style: TextStyle(color: Colors.white), ),
          Container(
            child: CircularProgressIndicator(color: Colors.white,backgroundColor: Colors.yellow,strokeWidth: 2),
          )
        ],
      ),
    );
  }
}
