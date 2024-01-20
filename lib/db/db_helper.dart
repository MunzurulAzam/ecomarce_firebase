import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommercefirebase/models/category_model.dart';

class DbHelper {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static const String collectionAdmin = 'Admins';

  static Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }
  static Future<void> addCategory(CategoryModel categoryModel){
    final catDoc = _db.collection(collectionCategory).doc();//...............create document for firebase

    categoryModel.categoryId = catDoc.id;
    return catDoc.set(categoryModel.toMap());
  }
  
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllCategory (){
    return _db.collection(collectionCategory).snapshots();
  }
}