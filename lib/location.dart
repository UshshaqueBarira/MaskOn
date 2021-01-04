import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Locate extends StatefulWidget {
  @override
  _LocateCurrentLocation createState() => _LocateCurrentLocation();
}

class _LocateCurrentLocation extends State<Locate> {
  String lattitude="";
  String longitude="";

  @override
  void initState(){
    super.initState();
    getCurrentLocation();

  }
//method for location fetch
  getCurrentLocation()async{
    final geoposition = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    setState(() {
      lattitude='${geoposition.latitude}';
      longitude='${geoposition.longitude}';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Lattitude:'+lattitude,style: TextStyle(fontSize: 30),),
          Text('Longitude:'+longitude,style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
