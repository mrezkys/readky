import 'package:readky/model/core/category.dart';

class CategoryHelper {
  static List<Category> categoryData = categoryRawData.map((data) => Category(name: data['name'])).toList();
}

var categoryRawData = [
  {'name': 'International'},
  {'name': 'Covid19'},
  {'name': 'Asia'},
  {'name': 'Europe'},
  {'name': 'Australia'},
  {'name': 'America'},
  {'name': 'Sports'},
  {'name': 'Health'},
  {'name': 'Politics'},
];
