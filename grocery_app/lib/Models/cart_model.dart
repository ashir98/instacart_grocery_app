import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel with ChangeNotifier{

  final _itemList = [

    // [name, image, price, bgcolor]
    ["Strawberry" , "Assets/images/strawberry.png", "30.00", Colors.red[100], Colors.red ],
    ["Cheese" , "Assets/images/cheese.png", "25.00", Colors.yellow[100], Colors.yellow],
    ["Blueberry" , "Assets/images/blueberry.png", "60.00", Colors.blue[100], Colors.blue],
    ["Grapes" , "Assets/images/grapes.png", "35.00", Colors.purple[100], Colors.purple],
    ["Banana" , "Assets/images/banana.png", "20.00", Colors.yellow[100],Colors.yellow],
    ["Milk" , "Assets/images/milk.png", "30.00", Colors.blue[100], Colors.blue],
    ["Raspberry" , "Assets/images/raspberry.png", "40.00", Colors.red[100], Colors.red],
    
  ];


  get itemList => _itemList;

  
}