import 'package:ecommercefirebase/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/category';

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORY LIST'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSingleTextInputDialog(
            context: context,
            title: 'Add New Title',
            onSubmit: (value){
              print(value);
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(),
    );
  }
}
