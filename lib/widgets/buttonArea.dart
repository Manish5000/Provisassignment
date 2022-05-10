import 'package:flutter/material.dart';

import 'package:provisassignment/button.dart';
import 'package:provisassignment/deviceSizeConfig.dart';
import 'package:provisassignment/searchpage.dart';


class ButtonArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top :DeviceSizeConfig.screenHeight!*0.02
      ),
      child: Column(
        children: [
          Mybutton(text: 'Login', c: Colors.white, c1: Colors.blue,borderSide: BorderSide(),func: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  Searchpage()));
          },),
          SizedBox(
            height: DeviceSizeConfig.screenHeight!*0.120,
          ),
          Mybutton(text: 'Continue in with google', c: Colors.grey.shade600, c1: Colors.white,borderSide: BorderSide(color: Colors.grey),),
          SizedBox(
            height: DeviceSizeConfig.screenHeight!*0.01,
          ),
          Mybutton(text: 'Create a bubble account', c: Colors.white, c1: Colors.black87, borderSide: BorderSide()) 
               
        ],
      ),
    );
  }
}