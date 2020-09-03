import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: CircleAvatar(
                  maxRadius: 45.0,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/39/dd/f1/39ddf1959382baedf086324d56410d72.jpg'),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Sangam Sharma',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              )),
          Container(
            height: height / 2,
            width: width,
            margin: EdgeInsets.all(15.0),
            child: Card(
              elevation: 1.0,
              color: Colors.white,
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Portfolio',
                      style: TextStyle(
                          backgroundColor: Colors.transparent,
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.work,color: Colors.grey,size: 18.0,),
                        SizedBox(width: 10.0,),
                        Text(
                          'Volunteer at RSS ',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400,fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.games,color: Colors.grey,size: 18.0,),
                        SizedBox(width: 10.0,),
                        Text(
                          'Left handed Batsman at DNCA ',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400,fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.create,color: Colors.grey,size: 18.0,),
                        SizedBox(width: 10.0,),
                        Text(
                          'Writer at Sangam Sharma Blogs',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/cat.png'),
                          width: 20,
                          height: 20,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'github.com/sangam.sharma6',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/instagram.png'),
                          width: 20,
                          height: 20,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'sangam.sharma6',
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
