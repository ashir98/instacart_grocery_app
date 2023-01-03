import 'package:flutter/material.dart';
import 'package:grocery_app/Services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  SplashService splashService =SplashService();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    splashService.navigateHome(context);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 100, end:500),
              duration: const Duration(seconds: 3),
              curve: Curves.easeInOutCubicEmphasized,
              builder: (context, value, child) {
                return Center(child: Image.asset("Assets/images/logo.png",width: value,));
              },
            )
          ],
        ),
      ),
    );
  }
}
