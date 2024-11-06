import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/english.dart';

import '../components/english_item.dart';

class CategoriesEnglishScreen extends StatelessWidget {
  final List<English> englishs;

  const CategoriesEnglishScreen(
      this.englishs, bool Function(English english) isFavorite,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryEnglis = englishs.where((english) {
      return english.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: categoryEnglis.length,
        itemBuilder: (ctx, index) {
          return EnglishItem(categoryEnglis[index]);
        },
      )),
    );
  }
}
