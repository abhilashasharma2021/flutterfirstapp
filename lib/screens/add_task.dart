
import 'package:firstappflutter/widgets/button_widget.dart';
import 'package:firstappflutter/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController detailController=TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 10,right: 10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/flutter.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              const SizedBox(
                height: 40,
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ))
            ]),
            Column(
              children:[
               TextFieldWidget(textController: nameController,
                   hintText:"Task name",
                   boardRadius:30),
                const SizedBox(height: 20,),
                TextFieldWidget(textController: detailController,
                    hintText:"Task details",
                    boardRadius:15,
                maxLines: 3,),
                const SizedBox(height: 20,),
                ButtonWidget(backgroundcolor: Colors.black, text: "Add", textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/20,
            )
          ],
        ),
      ),
    );
  }
}
