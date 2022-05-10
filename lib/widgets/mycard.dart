import 'package:flutter/material.dart';
class Mycard extends StatefulWidget {
  final Color? c;
  final String? image;
  final String? title;
  final Icons? icons;
  
  
  Mycard({@required this.c,@required this.title,@required this.image, this.icons});
  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(),
      margin: EdgeInsets.only(left: 10,right: 10),
      child: Card(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage(widget.image!,),height: 105,width: 120,),
            
            SizedBox(height: 35,),
            Text(widget.title!,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xff818090)),),
          ],
        ),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0),),
        
        color: widget.c!,
        elevation: 0.4        
      ),
    );
  }
}