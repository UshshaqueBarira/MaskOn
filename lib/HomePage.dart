import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_on/About Us.dart';
import 'package:mask_on/image_alert.dart';
import 'package:mask_on/location.dart';
import 'package:mask_on/Privacy_policy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:size.height*.30,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomLeft,
                image: AssetImage('assets/warrior.jpg'),fit: BoxFit.fill,
              )
            ),

          ),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children:<Widget> [
                    Container(
                      height: 100.0,
                    child: Row(
                      children:<Widget> [
                        Center(
                          child: SizedBox(
                            width: 90.0,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end
                        )
                      ],
                    ),
                    ),
                    Expanded(
                        child:GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          crossAxisCount: 2,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Card(
                                child: new InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Locate()));
                                    },
                                    child: Container(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset('assets/locate.png',height: 90),
                                            Text('GET CURRENT LOCATION',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
                                          ]
                                      ),
                                    )
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Card(
                                child: new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Locate()));
                                  },
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/3301/3301729.svg',height: 90),
                                        Text('SAVED LOCATIONS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
                                      ]
                                  ),
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Card(
                                child: new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IM()));
                                  },child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1040/1040216.svg',height: 90),
                                      Text('NOTIFICATIONS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                    ]
                                ),
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),

                              child: Card(
                                child:new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>About_us()));
                                  },
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1587/1587562.svg',height: 90),
                                        Text('ABOUT US',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                      ]
                                  ),
                                ) ,

                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Card(child:new InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()));
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('assets/pp_1.png', height: 90),
                                      Text('Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                    ]
                                ),
                              ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}



