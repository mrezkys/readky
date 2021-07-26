import 'package:flutter/material.dart';
import 'package:readky/model/core/category.dart';
import 'package:readky/model/core/news.dart';
import 'package:readky/model/helper/category_helper.dart';
import 'package:readky/model/helper/news_helper.dart';
import 'package:readky/view/widgets/news_tile.dart';
import 'package:readky/view/widgets/search_app_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchInputController = TextEditingController();
  List<Category> category = CategoryHelper.categoryData;
  List<News> searchData = NewsHelper.searchNews;

  @override
  void dispose() {
    searchInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(searchInputController.text);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: SearchAppBar(
          searchInputController: searchInputController,
          searchPressed: () {},
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: Colors.black,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: category.length,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.topCenter,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          searchInputController.text = category[index].name;
                        });
                      },
                      child: Text(
                        category[index].name,
                        style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w400),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFF313131), width: 1),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: searchData.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16);
                },
                itemBuilder: (context, index) {
                  return NewsTile(data: searchData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
