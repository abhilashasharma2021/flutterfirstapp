import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
     height:double.maxFinite,
     decoration: const BoxDecoration(
       image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage(
           "assets/images/dummy.png"
         )
       )
     ),
     child: Column(

       children: [
         Column(
             children:[

           ]
         ),
         Column(
           children: [

           ],
         )
       ],
     ),
      ),
    );
  }
}
