import 'package:flutter/material.dart';
import './form_widget.dart';

class Recruiter extends StatefulWidget {
  Recruiter({Key? key}) : super(key: key);

  @override
  _RecruiterState createState() => _RecruiterState();
}

class _RecruiterState extends State<Recruiter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discover Talent'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage('images/other1.png'),
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
