import 'package:flutter/material.dart';

import 'package:provisassignment/deviceSizeConfig.dart';


class EditFieldWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: DeviceSizeConfig.screenHeight!*0.02
      ),
      child: Column(
        children: [
          
          TextFormField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue)),
                   labelText: 'Username or Email',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.person,color: Colors.grey.shade600,)
                 ),
               ),
               SizedBox(
                 height: DeviceSizeConfig.screenHeight!*0.01,
               ),
              TextFormField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue)),
                   labelText: 'Password',
                   labelStyle: TextStyle(color: Colors.grey.shade600),
                   prefixIcon: Icon(Icons.lock,color: Colors.grey.shade600,),
                   
                   
                 ),
               ),
        ],
      ),
    );
  }
}