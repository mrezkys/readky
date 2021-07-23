import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchableButtonExample extends StatefulWidget {
  @override
  _SwitchableButtonExampleState createState() => _SwitchableButtonExampleState();
}

class _SwitchableButtonExampleState extends State<SwitchableButtonExample> {
  Alignment _containerAlignment = Alignment.centerLeft;
  Color textColor = Colors.white;
  Color textColorActive = Colors.black;
  bool activeLeft = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 30),
            height: 70,
            child: Stack(
              children: [
                AnimatedContainer(
                  height: 70,
                  alignment: _containerAlignment,
                  duration: Duration(seconds: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _containerAlignment = Alignment.centerLeft;
                          activeLeft = true;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        color: Colors.black.withOpacity(0),
                        alignment: Alignment.center,
                        child: AnimatedDefaultTextStyle(
                          style: TextStyle(color: (activeLeft == true) ? textColorActive : textColor),
                          duration: Duration(seconds: 1),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _containerAlignment = Alignment.centerRight;
                          activeLeft = false;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        color: Colors.black.withOpacity(0),
                        alignment: Alignment.center,
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(seconds: 1),
                          style: TextStyle(color: (activeLeft == false) ? textColorActive : textColor),
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
