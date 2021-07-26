import 'package:flutter/material.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/news_detail_page.dart';

class NewsTile extends StatelessWidget {
  final News data;
  NewsTile({@required this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(SlidePageRoute(child: NewsDetailPage(data: data)));
      },
      child: Container(
        height: 84,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage(data.photo), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 16 - 16 - 84,
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      height: 150 / 100,
                      fontFamily: 'inter',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    data.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
