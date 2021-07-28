import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SwitchableButton extends StatefulWidget {
  Color textColor;
  Color textColorActive;
  bool activeLeft;
  Color buttonColor;
  Color backgroundColor;
  Function onTapLeft;
  Function onTapRight;

  SwitchableButton(
      {this.textColor = Colors.white,
      this.textColorActive = Colors.black,
      this.activeLeft = true,
      this.buttonColor = Colors.white,
      this.backgroundColor = const Color(0x3DFFFFF),
      this.onTapLeft,
      this.onTapRight});
  @override
  _SwitchableButtonState createState() => _SwitchableButtonState();
}

class _SwitchableButtonState extends State<SwitchableButton> {
  @override
  Widget build(BuildContext context) {
    print(widget.activeLeft);
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 70,
      child: Stack(
        children: [
          AnimatedContainer(
            height: 70,
            alignment: (widget.activeLeft == true) ? Alignment.centerLeft : Alignment.centerRight,
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.backgroundColor,
            ),
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 2 - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.buttonColor,
              ),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.activeLeft = true;
                  });
                  widget.onTapLeft();
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  color: Colors.black.withOpacity(0),
                  alignment: Alignment.center,
                  child: AnimatedDefaultTextStyle(
                    style: TextStyle(color: (widget.activeLeft == true) ? widget.textColorActive : widget.textColor),
                    duration: Duration(milliseconds: 500),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'inter'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.activeLeft = false;
                  });
                  widget.onTapRight();
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  color: Colors.black.withOpacity(0),
                  alignment: Alignment.center,
                  child: AnimatedDefaultTextStyle(
                    duration: Duration(seconds: 1),
                    style: TextStyle(color: (widget.activeLeft == false) ? widget.textColorActive : widget.textColor),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'inter'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
