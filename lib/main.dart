import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Random random = Random();
  int x = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lottery Winning Number is 5', style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,),
            const SizedBox(height: 20),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                //using ternary condition
                child: x == 5 ?  Column(
                  children: const [
                    Text('Congratulations You Won The Lottery!!!' , style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20),
                    Icon(Icons.flare_outlined, color: Colors.red, size: 60,),
                  ],
                )
                :
                Column(
                children: [
                const Icon(Icons.error, color: Colors.red, size: 50,),
              const SizedBox(height: 20),
              Text('Your Number is $x :/ Try Again', style: const TextStyle(fontSize: 25), ),
                  ],
                )
              ),
            ),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
            child: const Icon(Icons.refresh),
            onPressed: () {
              x = random.nextInt(10);
              setState(() {
              });
          }
        ),
      ),
    );
  }
}