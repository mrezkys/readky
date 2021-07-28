import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/model/core/video_news.dart';
import 'package:readky/model/helper/news_helper.dart';
import 'package:readky/model/helper/video_news_helper.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/search_page.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:readky/view/widgets/news_tile.dart';
import 'package:readky/view/widgets/video_news_card.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> with TickerProviderStateMixin {
  TabController _bookmarkTabController;
  List<News> news = NewsHelper.bookmarkedNews;

  List<VideoNews> videoNews = VideoNewsHelper.bookmarkedVideoNews;

  List<VideoNews> featuredVideoNews = VideoNewsHelper.featuredVideoNews;
  @override
  void initState() {
    super.initState();
    _bookmarkTabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: SvgPicture.asset(
          'assets/icons/Menu.svg',
          color: Colors.white,
        ),
        onPressedLeading: () {
          Scaffold.of(context).openDrawer();
        },
        title: Text(
          'Bookmarks',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(SlidePageRoute(child: SearchPage(), direction: AxisDirection.up));
            },
            icon: SvgPicture.asset(
              'assets/icons/Search.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                controller: _bookmarkTabController,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                labelStyle: TextStyle(fontSize: 16),
                unselectedLabelStyle: TextStyle(fontSize: 16),
                labelPadding: EdgeInsets.symmetric(vertical: 8),
                indicatorWeight: 1.5,
                onTap: (index) {
                  setState(() {
                    _bookmarkTabController.index = index;
                  });
                },
                tabs: [
                  Tab(
                    text: 'News',
                  ),
                  Tab(
                    text: 'Video',
                  ),
                ],
              ),
              IndexedStack(
                index: _bookmarkTabController.index,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: news.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16);
                      },
                      itemBuilder: (context, index) {
                        return NewsTile(data: news[index]);
                      },
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    childAspectRatio: VideoNewsCard.itemWidth / VideoNewsCard.itemHeight,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 10,
                    children: List.generate(videoNews.length, (index) {
                      return VideoNewsCard(
                        data: videoNews[index],
                      );
                    }),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
