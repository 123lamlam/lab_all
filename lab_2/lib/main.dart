import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text('MiCard'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Phi Nguyen',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Divider(),
                  SizedBox(height: 10.0),
                  Text(
                    '1234 Main St',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    'City, Country',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Phone: (123) 456-7890',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
