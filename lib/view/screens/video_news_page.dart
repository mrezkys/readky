import 'package:flutter/material.dart';
import 'package:readky/model/core/video_news.dart';
import 'package:readky/model/helper/video_news_helper.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:readky/view/widgets/video_news_card.dart';
import 'package:readky/view/widgets/video_news_filter_sheet.dart';

class VideoNewsPage extends StatefulWidget {
  @override
  _VideoNewsPageState createState() => _VideoNewsPageState();
}

class _VideoNewsPageState extends State<VideoNewsPage> with TickerProviderStateMixin {
  List<VideoNews> videoNews = VideoNewsHelper.videoNews;
  TabController _categoryTabController;

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

  showFilter() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return VideoNewsFilterSheet();
      },
    );
  }

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
          'Video News',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showFilter();
            },
            icon: Icon(
              Icons.sort_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
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
            IndexedStack(
              index: _categoryTabController.index,
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  childAspectRatio: VideoNewsCard.itemWidth / VideoNewsCard.itemHeight,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 10,
                  children: List.generate(videoNews.length, (index) {
                    return VideoNewsCard(
                      data: videoNews[index],
                    );
                  }),
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
      ),
    );
  }
}
