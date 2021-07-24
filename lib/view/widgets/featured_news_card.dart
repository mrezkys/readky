import 'package:flutter/material.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/news_detail_page.dart';
import 'package:readky/view/utils/app_theme.dart';
import 'package:readky/view/widgets/tag_card.dart';

class FeaturedNewsCard extends StatelessWidget {
  final News data;
  FeaturedNewsCard({this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(SlidePageRoute(child: NewsDetailPage(data: data)));
      },
      child: Container(
        height: 320,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(data.photo),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 320,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              decoration: BoxDecoration(gradient: AppTheme.textOverlayGradient),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TagCard(
                    tagName: 'Movie',
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14, bottom: 12),
                    child: Text(
                      data.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        height: 150 / 100,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'inter',
                      ),
                    ),
                  ),
                  Text(
                    'Jul 14, 2021 11:22am',
                    style: TextStyle(fontSize: 12, color: Colors.white),
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
