import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/Models/cart_model.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<CartModel>(

          builder:(context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
          
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            leading: Image.asset(value.cartItems[index][1], height: 50,),
                            title: Text(value.cartItems[index][0]),
                            subtitle: Text('\$'+value.cartItems[index][2]),
                            trailing: IconButton(
                              icon: Icon(Icons.remove_circle_rounded),
                              onPressed: ()=>
                                Provider.of<CartModel>(context, listen: false).removeItemsFromCart(index)
                            ),
                            
                          ),
                        ),
                      );
                    },
                        
                  ),
              ),
          
          
          
                Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: double.infinity,
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("Total Price",style: TextStyle(color: Colors.white, fontSize: 13),),
                                  SizedBox(height: 5,),
                                  Text('\$'+value.calculateTotal(), style: TextStyle(color: Colors.white, fontSize: 23),),
                                ],
                              ),
                              Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    Text("Pay now", style: TextStyle(color: Colors.white),),
                                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
                                  ],
                                ),
                              ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}