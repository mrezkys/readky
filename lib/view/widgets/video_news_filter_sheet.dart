import 'package:flutter/material.dart';

class VideoNewsFilterSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(color: Colors.grey[200], border: Border(bottom: BorderSide(color: Colors.grey[350], width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Reset',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Sort by',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'inter'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height / 1.9) - 50,
            color: Colors.white,
            child: ListView(
              children: [
                _buildFilterOptionTile(title: 'Newest', selected: true),
                _buildFilterOptionTile(title: 'Oldest'),
                _buildFilterOptionTile(title: 'Popular'),
                _buildFilterOptionTile(title: 'Recomendation'),
                _buildFilterOptionTile(title: 'Random'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterOptionTile({@required String title, bool selected = false, Function onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Colors.grey[300], width: 1))),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          selected: selected,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: (selected == true)
                  ? [
                      Text(
                        title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      Icon(Icons.check),
                    ]
                  : [
                      Text(
                        title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ]),
        ),
      ),
    );
  }
}
