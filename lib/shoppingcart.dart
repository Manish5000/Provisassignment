import 'package:flutter/material.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({ Key? key }) : super(key: key);

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        
        title: Text('Shopping Cart',style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        itemExtent: 60,
        
        children: [
          Card(elevation: 10,
          
            child: ListTile(
              tileColor: Colors.blue,
              title:Text("Item 1") ,
            )
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: Text("Item 2"),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: Text("Item 3"),
            )
          ),
        ],
        padding: EdgeInsets.all(15),
      ),
      
    );
  }
}