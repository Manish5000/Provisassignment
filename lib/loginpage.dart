import 'package:flutter/material.dart';

import 'package:provisassignment/deviceSizeConfig.dart';
import 'package:provisassignment/widgets/buttonArea.dart';
import 'package:provisassignment/widgets/editFields.dart';
import 'package:provisassignment/widgets/title.dart';
class Loginpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return  SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: DeviceSizeConfig.screenHeight!*0.024,
              vertical: DeviceSizeConfig.screenHeight!*0.020
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(),
                SizedBox(height: 30,),
                Row(
                  children: [ SizedBox(width: 130,),
                    Image(image: AssetImage('assets/personicon.png',),height: 85,width: 100,),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.060,),
                EditFieldWidget(),
                
                ButtonArea(),
                
              ],
            ),
          ) ,
          
        ),
      
    );
  }
}