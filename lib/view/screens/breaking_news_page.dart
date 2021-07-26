import 'package:flutter/material.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/model/helper/news_helper.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:readky/view/widgets/news_tile.dart';

class BreakingNewsPage extends StatefulWidget {
  @override
  _BreakingNewsPageState createState() => _BreakingNewsPageState();
}

class _BreakingNewsPageState extends State<BreakingNewsPage> {
  List<News> allCategoriesNews = NewsHelper.allCategoriesNews;
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
          'Breaking News',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 250,
          //   alignment: Alignment.topCenter,
          //   color: Colors.black,
          //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 200,
          //     decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/vaccin.jpg'))),
          //     child: Container(
          //       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          //       width: MediaQuery.of(context).size.width,
          //       height: 200,
          //       decoration: BoxDecoration(gradient: AppTheme.textOverlayGradient),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Covid map: Coronavirus cases, deaths, vaccinations by country.',
          //             maxLines: 3,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          //           ),
          //           SizedBox(
          //             height: 5,
          //           ),
          //           Text(
          //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
          //             maxLines: 1,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // )

          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: allCategoriesNews.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                return NewsTile(data: allCategoriesNews[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
