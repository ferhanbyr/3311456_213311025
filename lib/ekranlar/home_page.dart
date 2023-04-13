import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/anasayfa_page.dart';
import 'package:forslag_2/ekranlar/ara_page.dart';
import 'package:forslag_2/ekranlar/exit_page.dart';

import 'package:forslag_2/ekranlar/favori_page.dart';

import 'package:forslag_2/ekranlar/yeni_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _ekranlar = [
    AnasayfaPage(),
    FavoriPage(),
    YeniPage(),
    AraPage(),
  ];
  void updateMenuIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ExitPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 50.0,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    _showLogoutDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Image.asset(
                      'assets/icons/user3.png',
                      height: 48.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _ekranlar[selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: updateMenuIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Anasayfa',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.red),
              label: 'Favori',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined, color: Colors.white),
              label: 'Yeni',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              label: 'Ara',
              backgroundColor: Colors.black),
        ],
        unselectedItemColor: Colors.grey, // seçilmemiş öğelerin rengi
        selectedLabelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
