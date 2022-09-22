import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  final Color? color;
  const TaskWidget({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          fontSize: 18,
          color: color
        ),),
      ),

    );
  }
}
