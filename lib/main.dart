// @dart=2.9
import 'package:firstappflutter/screens/add_task.dart';
import 'package:firstappflutter/screens/home_screen.dart';
import 'package:firstappflutter/screens/task_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Flutter Demo",
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

