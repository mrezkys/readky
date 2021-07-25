import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  TextEditingController searchInputController;
  Function searchPressed;
  SearchAppBar({@required this.searchInputController, this.searchPressed});
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.dark,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      titleSpacing: 0,
      title: Container(
        margin: EdgeInsets.only(left: 16, right: 10),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          controller: widget.searchInputController,
          onChanged: (value) {
            print(widget.searchInputController.text);
            setState(() {});
          },
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          maxLines: 1,
          decoration: InputDecoration(
            prefixIcon: Visibility(
              visible: (widget.searchInputController.text.isEmpty) ? true : false,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 12),
                child: SvgPicture.asset('assets/icons/Search.svg', color: Colors.white),
              ),
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20),
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
            contentPadding: EdgeInsets.only(left: 16, bottom: 9),
            focusColor: Colors.white,
          ),
        ),
      ),
      actions: [
        // The search button will appear if the input is not empty
        (widget.searchInputController.text.isEmpty)
            ? ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('cancel'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(fontWeight: FontWeight.w400),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              )
            : ElevatedButton(
                onPressed: widget.searchPressed,
                child: Text('Search'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(fontWeight: FontWeight.w400),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
      ],
    );
  }
}
