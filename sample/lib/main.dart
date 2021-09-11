import 'package:flutter/material.dart';
import './form_widget.dart';

void main() => (runApp(JobApp()));

class JobApp extends StatelessWidget {
  const JobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Job App'),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage('images/profile_photo.png'),
                  ),
                ),
              ),
              FormWidget()
            ],
          ),
        ),
      ),
    );
  }
}
