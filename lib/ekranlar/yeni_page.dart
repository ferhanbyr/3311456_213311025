import 'package:flutter/material.dart';

class YeniPage extends StatefulWidget {
  const YeniPage({Key? key}) : super(key: key);

  @override
  State<YeniPage> createState() => _YeniPageState();
}

class _YeniPageState extends State<YeniPage> {
  bool isFavorited1 = false;
  bool isFavorited2 = false;
  bool isFavorited3 = false;

  void _toggleFavorite1() {
    setState(() {
      isFavorited1 = !isFavorited1;
    });
  }

  void _toggleFavorite2() {
    setState(() {
      isFavorited2 = !isFavorited2;
    });
  }

  void _toggleFavorite3() {
    setState(() {
      isFavorited3 = !isFavorited3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popüler Uygulamalar'),
        backgroundColor: Colors.black,
        automaticallyImplyLeading:
            false, //appbarla gelen geri tuşunu kaldırmak için kullanılır
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 400,
                  width: 500,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images3/alışveriş4.jpg',
                          height: 300,
                          width: 300,
                        ),
                      ),
                      Positioned(
                        right: 48.0,
                        bottom: 58.0,
                        child: IconButton(
                          icon: Icon(
                            isFavorited1
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorited1 ? Colors.red : Colors.white,
                            size: 24.0,
                          ),
                          onPressed: _toggleFavorite1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 500,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images3/sanat5.jpg',
                          height: 300,
                          width: 300,
                        ),
                      ),
                      Positioned(
                        right: 48.0,
                        bottom: 58.0,
                        child: IconButton(
                          icon: Icon(
                            isFavorited3
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorited2 ? Colors.red : Colors.white,
                            size: 24.0,
                          ),
                          onPressed: _toggleFavorite2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 500,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images3/bilim4.jpg',
                          height: 300,
                          width: 300,
                        ),
                      ),
                      Positioned(
                        right: 48.0,
                        bottom: 58.0,
                        child: IconButton(
                          icon: Icon(
                            isFavorited2
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isFavorited2 ? Colors.red : Colors.white,
                            size: 24.0,
                          ),
                          onPressed: _toggleFavorite2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
