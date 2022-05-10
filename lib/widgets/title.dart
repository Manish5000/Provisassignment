import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provisassignment/deviceSizeConfig.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceSizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
               
      ),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.wifi,color: Colors.white,),
        Padding(
          padding: EdgeInsets.only(
            top: DeviceSizeConfig.screenHeight!*0.03,
            bottom: DeviceSizeConfig.screenHeight!*0.01
          ),
          child: Row(
            children: [ SizedBox(width: 75,),
              Text('Welcome to Login',style: GoogleFonts.lobster(textStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.normal,))),
            ],
          ),
        ),
        Text('   ',style: TextStyle(color: Colors.grey.shade500,fontSize: 16, ),textAlign: TextAlign.left,),
            
      ],
    ));
  }
}