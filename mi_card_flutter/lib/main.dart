import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage:AssetImage('images/picture.png'),
              ),
              Text(
                'Hedghog Sonic',
                style: TextStyle(
                  fontSize:35,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
              'RACING HEDGHOG ',
              style: TextStyle(
                fontSize:20,
                letterSpacing: 2.5,
                color: Colors.teal[100],
                fontFamily: 'SourceCodePro',
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(40,10,40,0),
                child: ListTile(
                  leading: Icon(
                    Icons.local_phone,
                    color: Colors.teal[600],
                    size: 30,
                  ),
                  title: Text(
                    '+216 55 306 522',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0,horizontal: 40),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[600],
                    size: 30,
                  ),
                  title: Text(
                    'sonic.Hedghog@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
