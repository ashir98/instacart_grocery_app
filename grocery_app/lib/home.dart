import 'package:flutter/material.dart';
import 'package:grocery_app/Widgets/grid_tile.dart';
import 'package:grocery_app/cart.dart';
import 'package:provider/provider.dart';
import 'Models/cart_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

     CartModel cartModel = CartModel();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset("Assets/images/appbar_logo.png",width: 150, height: 150,),
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
            ////Greetings text
            
            Padding(
              padding: EdgeInsets.all(15),
              child: Text("Hi there!", style: GoogleFonts.roboto(fontSize: 25,color: Colors.black54),),
            ),
          
            ///Lets order some fresh items for you
              Padding(
              padding: EdgeInsets.all(15),
              child: Text("Lets order some fresh items for you.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 35),),
            ),



            ///Grid tiles for the grocery items
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.3),
                    itemCount: value.itemList.length,
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        name: value.itemList[index][0],
                        image: value.itemList[index][1],
                        price: value.itemList[index][2],
                        bgColor: value.itemList[index][3],
                        btnColor: value.itemList[index][4],
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed:() => Navigator.of(context).push(MaterialPageRoute(builder:(context) => CartScreen(),)),
          child: Icon(Icons.shopping_cart_rounded, color: Colors.white,),
        ),
      ),
    );
  }
}