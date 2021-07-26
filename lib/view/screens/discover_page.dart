import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/model/core/video_news.dart';
import 'package:readky/model/helper/news_helper.dart';
import 'package:readky/model/helper/video_news_helper.dart';
import 'package:readky/route/slide_page_route.dart';
import 'package:readky/view/screens/search_page.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:readky/view/widgets/featured_video_news_card.dart';
import 'package:readky/view/widgets/news_tile.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> with TickerProviderStateMixin {
  ScrollController _featuredVideoNewsCardScrollController = ScrollController();
  TabController _categoryTabController;
  List<VideoNews> featuredVideoNews = VideoNewsHelper.featuredVideoNews;
  List<News> allCategoriesNews = NewsHelper.allCategoriesNews;

  @override
  void initState() {
    super.initState();
    _categoryTabController = TabController(length: 7, vsync: this);
  }

  _changeTab(index) {
    setState(() {
      _categoryTabController.index = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _categoryTabController.dispose();
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
          'Discover',
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
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Featured News Video
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.of(context).size.width,
            height: 245,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 170,
                  child: ListView.separated(
                    controller: _featuredVideoNewsCardScrollController,
                    padding: EdgeInsets.only(left: 16),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: featuredVideoNews.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemBuilder: (context, index) {
                      return FeaturedVideoNewsCard(
                        data: featuredVideoNews[index],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Video News',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      ScrollIndicator(
                        scrollController: _featuredVideoNewsCardScrollController,
                        height: 6,
                        width: 30,
                        indicatorWidth: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white.withOpacity(0.3)),
                        indicatorDecoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // Section 2 - News Based on Category
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TabBar(
                    isScrollable: true,
                    controller: _categoryTabController,
                    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'inter'),
                    labelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'inter'),
                    unselectedLabelColor: Colors.black.withOpacity(0.6),
                    indicatorColor: Colors.transparent,
                    onTap: _changeTab,
                    tabs: [
                      Tab(
                        text: 'All categories',
                      ),
                      Tab(
                        text: 'Covid19',
                      ),
                      Tab(
                        text: 'International',
                      ),
                      Tab(
                        text: 'Europe',
                      ),
                      Tab(
                        text: 'American',
                      ),
                      Tab(
                        text: 'Asian',
                      ),
                      Tab(
                        text: 'Sports',
                      ),
                    ],
                  ),
                ),
                IndexedStack(
                  index: _categoryTabController.index,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 16),
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
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                    SizedBox(
                      child: Center(child: Text('category page ${_categoryTabController.index}')),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
