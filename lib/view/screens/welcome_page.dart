import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/auth/login_page.dart';
import 'package:readky/view/screens/auth/register_page.dart';
import 'package:readky/view/widgets/switchable_button.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: MediaQuery.of(context).size.width,
        child: SwitchableButton(
          backgroundColor: Colors.white.withOpacity(0.1),
          onTapLeft: () {
            Navigator.of(context).push(SlidePageRoute(child: RegisterPage()));
          },
          onTapRight: () {
            Navigator.of(context).push(SlidePageRoute(child: LoginPage()));
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/welcomepagebg.jpg',
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * (48 / 100),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/appname.svg',
                        width: MediaQuery.of(context).size.width * (3 / 10),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(
                          'Free Flutter News App \nStarter Template',
                          style: TextStyle(color: Colors.white, height: 150 / 100, fontWeight: FontWeight.w500, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
