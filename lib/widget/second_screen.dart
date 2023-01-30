import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String value="";
  String lastname="";
  SecondScreen({required String data,required String name}){
    value=data;
    lastname=name;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:  CrossAxisAlignment.center,
            children: [
              Text("My first name is $value",style: TextStyle(color: Colors.red),),
              Text("My last name is $lastname",style: TextStyle(color: Colors.red)),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child:Text("Click for back navigation"),),
            ],
          ),
        ),
      ),


    );
  }
}
