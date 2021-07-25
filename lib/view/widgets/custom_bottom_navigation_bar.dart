import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/view/utils/app_theme.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  Function onItemTapped;
  CustomBottomNavigationBar({@required this.selectedIndex, @required this.onItemTapped});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  // BottomNavigationBarItem _bottomNavigationBarHomeItemBuilder() {
  //   return (widget.selectedIndex == 0)
  //       ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home-filled.svg'), label: 'Home', backgroundColor: Colors.white)
  //       : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg'), label: 'Home', backgroundColor: Colors.white);
  // }

  // BottomNavigationBarItem _bottomNavigationBarSearchItemBuilder() {
  //   return (widget.selectedIndex == 1)
  //       ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Search-filled.svg'), label: 'Home', backgroundColor: Colors.white)
  //       : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Search.svg'), label: 'Home', backgroundColor: Colors.white);
  // }

  // BottomNavigationBarItem _bottomNavigationBarBookmarkItemBuilder() {
  //   return (widget.selectedIndex == 2)
  //       ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Bookmark-filled.svg'), label: 'Home', backgroundColor: Colors.white)
  //       : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Bookmark.svg'), label: 'Home', backgroundColor: Colors.white);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.softBorderColor, width: 1)),
        color: Colors.white,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.white,
        currentIndex: widget.selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: widget.onItemTapped,
        items: <BottomNavigationBarItem>[
          (widget.selectedIndex == 0)
              ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home-filled.svg'), label: 'Home', backgroundColor: Colors.white)
              : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Home.svg'), label: 'Home', backgroundColor: Colors.white),
          (widget.selectedIndex == 1)
              ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Search-filled.svg'), label: 'Home', backgroundColor: Colors.white)
              : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Search.svg'), label: 'Home', backgroundColor: Colors.white),
          (widget.selectedIndex == 2)
              ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Bookmark-filled.svg'), label: 'Home', backgroundColor: Colors.white)
              : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/Bookmark.svg'), label: 'Home', backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
