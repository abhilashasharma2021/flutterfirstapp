import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final double? boardRadius;
  final int? maxLines;

  const TextFieldWidget({Key? key,
    required this.textController,
    required this.hintText,
    this.maxLines=1,
    this.boardRadius=30}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLines: maxLines,
      controller: textController,

      decoration: InputDecoration(
          filled: true,
          fillColor:Colors.black12,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boardRadius!),
              borderSide: const BorderSide(
                  color:Colors.white,
                  width:1
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boardRadius!),
              borderSide: const BorderSide(
                  color:Colors.white,
                  width:1
              )
          )
      ),
    );
  }
}
