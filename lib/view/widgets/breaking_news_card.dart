import 'package:flutter/material.dart';
import 'package:readky/model/core/news.dart';

class BreakingNewsCard extends StatelessWidget {
  final News data;
  BreakingNewsCard({this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10), image: DecorationImage(image: AssetImage(data.photo), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.only(left: 4),
              child: Text(
                data.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 150 / 100,
                  fontFamily: 'inter',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
