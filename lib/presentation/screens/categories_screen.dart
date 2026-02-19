import 'package:flutter/material.dart';
import '../widgets/category_tile.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = ['Shirts', 'Pants', 'Jackets', 'Shoes', 'Accessories', 'Watches'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryTile(
            categoryName: categories[index],
            itemCount: 12 + (index * 2),
          );
        },
      ),
    );
  }
}

