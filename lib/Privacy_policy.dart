import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  privacy_policy createState() => privacy_policy();
}

class privacy_policy extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyTextPage()
    );
  }
}

class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            title:Text("Privacy Policy")
        ),
        body: Center(
            child:Text("What forms of personal information you collect: "
                "The personal information used in this application is just the location of the user. The current location fetched by the algorithm will give us the current location of the user as they are moving with their device. "
                "How the user's personal information is collected: "
                "The user's personal information used is just the location of the user."
                "How users can request more details on the information that is collected: "
                "The users need not worry about their personal location since we are not storing the location lattitude and longitude on their database."
                "What you intend to use personal information for: "
                "The personal information (location of the user) shall be used only to fetch the location difference and vibrate on the location change for wearing the mask!"
                "Any third parties that you allow to collect personal information via your website/app:"
                "No, there are no third parties that are sharing the data being used on this application.",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            )
        )
    );
  }
}