import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:readky/view/widgets/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressedLeading: () {
          Navigator.of(context).pop();
        },
        title: Text(
          'Profile Info',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          //  Section 1 = Profile Info
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: Colors.black,
            alignment: Alignment.topCenter,
            child: ProfileInfoCard(
              username: 'Shasy Re',
              subscriptionStatus: 'Basic Account',
            ),
          ),
          // Section 2 - Banner
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFE5E5E5)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hey, its seems like you \nhavent read any news today.',
                      style: TextStyle(
                        height: 150 / 100,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'inter',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF252525),
                      padding: EdgeInsets.only(left: 14, top: 7, bottom: 7, right: 8),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('Read Now'),
                        SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Menu title - Account Settings
                _buildMenuTitle(context, title: 'Account settings'),
                _buildMenuTile(
                  context,
                  title: 'Your Profile',
                  desciption: 'Edit and view profile info.',
                  icon: SvgPicture.asset(
                    'assets/icons/Profile.svg',
                    color: Colors.black,
                  ),
                ),
                _buildMenuTile(
                  context,
                  title: 'My Subscription',
                  desciption: 'Customize your subscription.',
                  icon: SvgPicture.asset(
                    'assets/icons/Ticket Star.svg',
                    color: Colors.black,
                  ),
                ),
                // Menu title - Account Settings
                _buildMenuTitle(context, title: 'App Settings'),
                _buildMenuTile(
                  context,
                  title: 'Notification',
                  desciption: 'Edit and view profile info.',
                  icon: SvgPicture.asset(
                    'assets/icons/Notification.svg',
                    color: Colors.black,
                  ),
                ),
                _buildMenuTile(
                  context,
                  title: 'My Time',
                  desciption: 'Customize your subscription.',
                  icon: SvgPicture.asset(
                    'assets/icons/Time Circle.svg',
                    color: Colors.black,
                  ),
                ),
                _buildMenuTile(
                  context,
                  title: 'Setting',
                  desciption: 'Customize your subscription.',
                  icon: SvgPicture.asset(
                    'assets/icons/Setting.svg',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildMenuTitle(BuildContext context, {@required String title}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 10, top: 15),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter'),
      ),
    );
  }

  Widget _buildMenuTile(BuildContext context, {@required String title, @required String desciption, Function onTap, Widget icon}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color(0xFFE5E5E5)),
              child: Center(child: icon),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      desciption,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[350],
            )
          ],
        ),
      ),
    );
  }
}
