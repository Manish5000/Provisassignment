import 'package:flutter/material.dart';
import 'package:provisassignment/deviceSizeConfig.dart';
import 'package:provisassignment/loginpage.dart';
import 'package:provisassignment/shoppingcart.dart';

import 'package:provisassignment/widgets/mycard.dart';
class Searchpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: AppBar(
              leading: IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Loginpage()));
              }, 
              icon: Icon(Icons.arrow_back,color: Colors.black,)),
              elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Select Items',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: <Widget>[
            InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>  Shoppingcart()));},
              child: Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
          ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 25,top: 20),
          child: Row(
             children: <Widget>[
                Text('Showing 1260 items',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Spacer(),
                InkWell(
                  onTap:(){} ,
                 child: Icon(Icons.filter_alt,color: Colors.black,)),
                ],),
            ),
      ),
        Expanded(child: GridView.count(crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: <Widget>[
                InkWell(
                  onTap: (){},
                  child: Container(
                    child: Mycard(c: Colors.white, title: "Men's 6 inches premium\nRs.185.00", image: 'assets/boots.jpg' ),
                    ),),
                    
                    InkWell(
                  onTap: (){},
                  child: Container(
                    child: Mycard(c: Colors.white, title:  "Men's 6 inches premium\nRs.185.00", image: 'assets/boots.jpg' ),
                    ),),
                    InkWell(
                  onTap: (){},
                  child: Container(
                    child: Mycard(c: Colors.white, title:  "Men's 6 inches premium\nRs.185.00", image: 'assets/boots.jpg' ),
                    ),),
                    InkWell(
                  onTap: (){},
                  child: Container(
                    child: Mycard(c: Colors.white, title: "Men's 6 inches premium\nRs.185.00", image: 'assets/boots.jpg' ),
                    ),),
                ],
              )),
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: GestureDetector(
         onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>  Shoppingcart()));},
         child: InkWell(
           
          child: Container(
            height: DeviceSizeConfig.screenHeight!*0.06,
            width: DeviceSizeConfig.screenWidth,
            decoration: BoxDecoration(
              boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.5
                  )
            ],
            color: Colors.black87,borderRadius: BorderRadius.circular(25)),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  
                  Text('Go to cart',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
              ],
            ),
          ),
             ),
        ),
               )
              ],

              
      ),
     
        
      
    );
  }
}