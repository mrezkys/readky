import 'package:flutter/material.dart';

class TagCard extends StatelessWidget {
  final String tagName;
  TagCard({@required this.tagName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(5)),
      child: Text(
        tagName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
