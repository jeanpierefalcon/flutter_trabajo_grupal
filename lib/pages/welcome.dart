import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          children: <Widget>[
           ImageWelcome(),
            BodyWelcome()
          ],
        ),
      ),
    );
  }

  Widget ImageWelcome() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.none,
          image: AssetImage("assets/img/background.png"),
        ),
      ),
      width: double.infinity,
      height: 320,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              child: Image.asset("assets/img/icon-home.png"),
            ),
          ),
        ],
      ),
    );
  }

  Widget BodyWelcome() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome to',
            style: TextStyle(
                fontSize: 20, color: Color(0xFF22215B)),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Dirbbox',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Color(0xFF22215B)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.',
            style: TextStyle(
                fontSize: 14, color: Color(0xFF7B7F9E)),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () { print("Smart Id"); },
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(86, 125, 244, 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/img/huella.png'),
                      SizedBox(width: 10),
                      Text('Smart Id',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                            color: Color(0xFF567DF4)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () { print("Sign in"); },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF567DF4),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Sign in',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF)),
                      ),
                      SizedBox(width: 10),
                      Image.asset('assets/img/vector.png'),
                    ],
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

