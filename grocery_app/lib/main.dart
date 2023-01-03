import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/Models/cart_model.dart';
import 'package:grocery_app/home.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    )
  );
  runApp(
    const InstaCart());
}


class InstaCart extends StatelessWidget {
  const InstaCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => CartModel(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}