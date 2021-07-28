import 'package:flutter/material.dart';
import 'package:readky/model/core/video_news.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/video_news_page.dart';
import 'package:readky/view/utils/app_theme.dart';
import 'package:readky/view/widgets/tag_card.dart';

class FeaturedVideoNewsCard extends StatelessWidget {
  final VideoNews data;
  FeaturedVideoNewsCard({@required this.data});
  @override
  Widget build(BuildContext context) {
    return (data.title != 'View More')
        ? Container(
            height: 170,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(data.thumbnail)),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              height: 170,
              width: 140,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), gradient: AppTheme.textOverlayGradient),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TagCard(
                    tagName: 'Video',
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      data.title,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 150 / 100,
                        fontFamily: 'inter',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.of(context).push(SlidePageRoute(child: VideoNewsPage()));
            },
            child: Container(
              height: 170,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'More Video',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 12,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
