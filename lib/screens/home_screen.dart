import 'package:firstappflutter/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20,right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/images/bg.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          RichText(
              text: const TextSpan(
                  text: "Hello",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                  text: "\nstart your beautiful day",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,

                  ))
                ]
              )
          ),
            SizedBox(height: MediaQuery.of(context).size.height/2.0,),
            ButtonWidget(backgroundcolor:Colors.black,
                text: "Add Task", textColor: Colors.white),
            SizedBox(height: 20,),
            ButtonWidget(backgroundcolor:Colors.white,
                text: "View All", textColor: Colors.black)
          ],
        ),
      ),
    );
  }
}
