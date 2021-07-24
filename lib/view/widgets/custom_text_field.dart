import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function onChanged;
  final String hintText;
  final String labelText;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool obsecureText;

  CustomTextField({
    this.controller,
    this.onChanged,
    this.hintText,
    this.labelText,
    this.obsecureText = false,
    this.margin = const EdgeInsets.only(bottom: 16),
    this.padding = const EdgeInsets.only(left: 20, bottom: 5, top: 8),
  });
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: MediaQuery.of(context).size.width,
      padding: widget.padding,
      margin: widget.margin,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFF0E0E0E), border: Border.all(color: Color(0xFF494949), width: 1)),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        maxLines: 1,
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        obscureText: widget.obsecureText,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5), height: 0, fontSize: 16),
          labelText: widget.labelText,
          labelStyle: TextStyle(color: Colors.grey, height: 0, fontSize: 14, fontFamily: 'inter'),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
