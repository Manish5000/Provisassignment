import 'package:flutter/material.dart';

import 'package:provisassignment/deviceSizeConfig.dart';
class Mybutton extends StatefulWidget {
  final String? text;
  final Color? c;
  final Color? c1;
  final BorderSide? borderSide;
  final Icon? i;
  final VoidCallback? func;
  

Mybutton({@required this.text,@required this.c,this.func,@required this.c1,@required this.borderSide, this.i});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return 
      
       GestureDetector(
         onTap: widget.func,
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
            color: widget.c1,borderRadius: BorderRadius.circular(25)),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Text(widget.text!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: widget.c)),
              ],
            ),
          ),
             ),
       );
      
    
  }
}