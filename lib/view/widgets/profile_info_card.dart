import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String username;
  final String subscriptionStatus;

  ProfileInfoCard({@required this.username, @required this.subscriptionStatus});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      height: 76,
      decoration: BoxDecoration(
        color: Color(0xFF191919),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(100)),
              margin: EdgeInsets.only(right: 20),
              child: Image.asset('assets/images/pp.png'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'inter',
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    subscriptionStatus,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Upgrade',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF252525),
                  textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  padding: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
