import 'package:ecommercefirebase/db/db_helper.dart';
import 'package:ecommercefirebase/models/category_model.dart';
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier {
  List<CategoryModel> categoryList = [];

  Future<void> addCategory(String name) {
    final category = CategoryModel(categoryName: name);
    return DbHelper.addCategory(category);
  }

  getAllCategories() {
    DbHelper.getAllCategory().listen((snapshot) {
      categoryList = List.generate(snapshot.docs.length, (index) => CategoryModel.fromMap(snapshot.docs[index].data()));
      notifyListeners();
    });
  }
}
