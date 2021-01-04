import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class About_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          logo: AssetImage('assets/panda.jpg'),
          email: 'barira.ushshaque@gmail.com',
          companyName: 'Barira Ushshaque',
          phoneNumber: '8090289432',
          linkedinURL: 'https://www.linkedin.com/in/barira.ushshaque/',
          tagLine: 'Application Developer',
          instagram: 'barira_bsd',
        ),
      ),
    );
  }
}
