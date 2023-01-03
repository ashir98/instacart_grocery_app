// ignore_for_file: implementation_imports, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItemTile extends StatelessWidget {

  String name;
  String price;
  Color bgColor;
  String image;
  Color btnColor;
  
  GroceryItemTile({
    super.key, 
    required this.name,
    required this.image,
    required this.bgColor,
    required this.price,
    required this.btnColor
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10),
      child: Container(
        padding:  EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///item image
            Image.asset(image,height: 80,),
            const SizedBox(height: 10,),
            
            ///item name
            Text(name, style: GoogleFonts.roboto(fontSize: 15),),
            
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              color: btnColor,
              onPressed: () {
                
              },
              child: Text('\$'+price,style: TextStyle(fontSize: 15),),
            )
          ],
        ),
      ),
    );
  
  }

  

  
  
}