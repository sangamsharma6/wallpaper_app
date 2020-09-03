import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/BottomAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0,right: 0,bottom: 0,left: 0,child: Image(image: AssetImage('images/splashimage.jpg'),fit: BoxFit.fitHeight,)),
          Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('KalaKriti',style:GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                Container(margin: EdgeInsets.all(10.0),child: Text('by Sangam',style:GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 12.0,color: Colors.white),)),
              ],
            ) ,
          )
        ],
      ),
    );
  }
}
