import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.deepPurple,
                  ),
                  const Divider(),
                  Text('Amani'),
                  const Divider(),
                  Text('devloper'),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Email'),
                      Text('altaear@gmail.com'),

                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('phone'),
                      Text('776417243'),

                    ],
                  ),
                  const Divider(),
                  Text('Skills'),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('Time Management',style: TextStyle(color: Colors.white,fontSize: 11),textAlign: TextAlign.center,),
                          Text('Mobile App Development (Android/iOS)',style: TextStyle(color: Colors.white,fontSize: 11),textAlign: TextAlign.center,),
                          Text('Flutter/Dart Development', style: TextStyle(color: Colors.white,fontSize: 11),textAlign: TextAlign.center,)
                        ],
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),

      ),


    );
  }
}
