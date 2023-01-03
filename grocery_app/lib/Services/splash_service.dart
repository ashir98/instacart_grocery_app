import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/home.dart';

class SplashService{

  void navigateHome(BuildContext context){
    Timer(
      const Duration(seconds: 3),
      ()=>Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage(),))
    );
  }
}