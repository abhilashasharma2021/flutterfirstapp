import 'package:firstappflutter/widgets/button_widget.dart';
import 'package:firstappflutter/widgets/task_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = ["Try harder", "Try smarter"];

    final leftEditIcon=Container(
     margin: const EdgeInsets.only(bottom: 10),
      color: Colors.black.withOpacity(0.6),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft ,
    );

    final rightDeleteIcon=Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight ,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 60),
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height/3.5,
          decoration: const BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover,
                  image: AssetImage("assets/images/flutter.png"))),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              const Icon(
                Icons.home,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black),
              ),
              Expanded(child: Container()),
              const Icon(
                Icons.calendar_month_sharp,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "2",
                style: TextStyle(fontSize: 15, color: Colors.blue),
              )
            ],
          ),
        ),
        Flexible(child: ListView.builder(
          itemCount: myData.length,
            itemBuilder: (context, index) {
          return Dismissible(
            background: leftEditIcon,
            secondaryBackground: rightDeleteIcon,
            onDismissed: (DismissDirection direction){

            },
            confirmDismiss:  (DismissDirection direction)async{
              if(direction==DismissDirection.startToEnd){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (_){
                  return Container(
                    height: 550,
                    decoration:BoxDecoration(
                      color: const Color(0xFF2e3253).withOpacity(0.4),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      )
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                        mainAxisAlignment:  MainAxisAlignment.center,
                        children: [
                          ButtonWidget(backgroundcolor: Colors.black, text: "View", textColor: Colors.white),
                          SizedBox(height: 20,),
                          ButtonWidget(backgroundcolor: Colors.black, text: "Edit ", textColor: Colors.white)
                        ],
                      ),
                    ),
                  );
                    });
                return false;
              }
              else{
                return Future.delayed(Duration(seconds: 1),()=>direction==DismissDirection.endToStart);

              }

            },
            key: ObjectKey(index),
            child: Container(
              margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: TaskWidget(
                text: myData[index],
                color: Colors.blueGrey,
              ),
            ),
          );
        }))
      ]),
    );
  }
}
