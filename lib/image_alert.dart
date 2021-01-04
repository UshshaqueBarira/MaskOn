import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IM extends StatelessWidget {
  BuildContext get context => null;

  void initState(){
    HapticFeedback.vibrate();
    Timer(Duration(seconds: 30),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>exit(0))));
    print('Exited the app successfully!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ALERT HAS COME",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WEAR MASK',style: TextStyle(fontSize: 30.0),),centerTitle: true,
        ),
        body: new Container(
            color: Colors.white,
            child: new Image.asset('assets/mask_on.jpg'),
            alignment: Alignment.center,
        ),
      ),
    );
  }
}