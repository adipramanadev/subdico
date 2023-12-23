import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white, // navigation bar color
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light),
    );

    // Delay for 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return WelcomeScreen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
