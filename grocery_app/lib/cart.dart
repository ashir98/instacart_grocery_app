import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset("Assets/images/appbar_logo.png",width: 150, height: 150,),
        ),
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}