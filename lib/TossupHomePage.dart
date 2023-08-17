

import 'dart:math';

import 'package:flutter/material.dart';

class TossupHomePage extends StatefulWidget {
  const TossupHomePage({Key? key}) : super(key: key);

  @override
  State<TossupHomePage> createState() => _TossupHomePageState();
}

class _TossupHomePageState extends State<TossupHomePage> {

  int value1=1;
  int value2=1;
  void tossdice(){
    value1 = Random().nextInt(6) + 1;
    value2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOSSUP',style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
          fontSize: 24
        ),),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            tossdice();
          });
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/dice${value1}.png',
                  width: 180,
                  height: 180,
                ),
                Image.asset(
                  'images/dice${value2}.png',
                  width: 180,
                  height: 180,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
