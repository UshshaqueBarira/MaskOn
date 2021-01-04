import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_resolution.dart';

class Alert extends StatefulWidget{
  @override
  alertBox createState()=>new alertBox();

  }
class alertBox extends State<Alert>{
  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Alert',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,
        color: Colors.red,backgroundColor: Colors.black)
        ),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Me'),
          onPressed: (){
           showDialog(context: context, builder: (context)=>CustomDialog(
             title: 'ALERT NOTIFICATION',
             description: 'Your assistant is reminding you to wear the MASK because you are going out!',
             
           )
            );
          }
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  String imagePath;

  CustomDialog({this.title, this.description, this.buttonText, this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),


    );
  }
  dialogContent(BuildContext context){
    return Stack(
      children:<Widget> [
        Container(
          padding: EdgeInsets.only(
            top:100 ,
            bottom:16,
            left:16,
            right:16
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            offset: Offset(0.0,10.0),
    )
    ]
    ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          Text(
        title,
    style: TextStyle(
    fontWeight: FontWeight.bold, fontSize: 30,
    ),
        ),
        SizedBox(
          height: 16.0,
         ),
        Text(description,style: TextStyle(fontSize: 16.0)),
        SizedBox(height: 24.0,),
        Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Confirm'),
        ),
        ),
        ],
    ),
          ),
        Positioned(
          top: 0,
          right: 16,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.lightBlueAccent,
            radius: 40,
          ),
        )
      ],
    );
  }
}