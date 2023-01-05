import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel with ChangeNotifier{

  final List<dynamic> _itemList = [

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

  //// List of items in cart
  
  List _cartItems = [];

  get cartItems => _cartItems;


  /// to add items in cart
  
  void addItemsInCart(int index){
    _cartItems.add(_itemList[index]);
    notifyListeners();
  }
  

  ///to remove items from cart
  

  void removeItemsFromCart(int index){

    _cartItems.removeAt(index);
    notifyListeners();

  }
  


  ///to total the items in cart
  String calculateTotal(){
    double totalPrice = 0;
    for(int i= 0 ; i <_cartItems.length ; i++){
      totalPrice += double.parse(_cartItems[i][2]);

    }
    return totalPrice.toStringAsFixed(2);
  }

  
}