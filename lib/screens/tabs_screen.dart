import 'package:flutter/material.dart';
import 'favorite_detail_screen.dart';
import 'categories_screen.dart';
import '../components/english_drawer.dart';
import '../models/english.dart';

class TabsScreen extends StatefulWidget {
  final List<English> favoriteEnglishs;

  const TabsScreen(this.favoriteEnglishs, {super.key});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  void _toggleFavorite(English english) {
    setState(() {
      if (widget.favoriteEnglishs.contains(english)) {
        widget.favoriteEnglishs.remove(english);
      } else {
        widget.favoriteEnglishs.add(english);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gramática de Inglês'),
      ),
      drawer: const Drawer(
        child: EnglishDrawer(),
      ),
      body: _selectedScreenIndex == 0
          ? const CategoriesScreen()
          : FavoriteScreen(widget.favoriteEnglishs, _toggleFavorite),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedScreenIndex = index;
          });
        },
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
