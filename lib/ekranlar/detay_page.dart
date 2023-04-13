import 'package:flutter/material.dart';
import 'package:forslag_2/model/gereksinim.dart';

class DetayPage extends StatefulWidget {
  final int id;
  const DetayPage({Key? key, required this.id}) : super(key: key);

  @override
  _DetayPageState createState() => _DetayPageState();
}

final List<Gereksinim> gereksinimList = Gereksinim.gereksinimList;

class _DetayPageState extends State<DetayPage> {
  bool toggleIsFavori(bool isFavori) {
    return !isFavori;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          gereksinimList[widget.id].title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 600.0,
                  width: 300,
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      PageView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, left: 8.0, top: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    gereksinimList[widget.id].image2Url,
                                    height: 284.0,
                                    width: 284.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.6),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gereksinimList[widget.id].title1,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          gereksinimList[widget.id].description,
                                          textAlign: TextAlign.justify,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            height: 2.0,
                                          ),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                bool isFavori = toggleIsFavori(
                                    gereksinimList[widget.id].isFavori);
                                gereksinimList[widget.id].isFavori = isFavori;
                              });
                            },
                            icon: gereksinimList[widget.id].isFavori == true
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  )),
                      ),
                      Positioned(
                        bottom: 18.0,
                        right: 40.0,
                        child: IconButton(
                          onPressed: () {
                            // buraya indirme butonunun işlevselliğini ekleyebilirsiniz
                          },
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 600.0,
                  width: 300,
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      PageView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, left: 8.0, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    gereksinimList[widget.id].image3Url,
                                    height: 284.0,
                                    width: 284.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.6),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gereksinimList[widget.id].title2,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          gereksinimList[widget.id]
                                              .description1,
                                          textAlign: TextAlign.justify,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            height: 2.0,
                                          ),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                bool isFavori = toggleIsFavori(
                                    gereksinimList[widget.id].isFavori);
                                gereksinimList[widget.id].isFavori = isFavori;
                              });
                            },
                            icon: gereksinimList[widget.id].isFavori == true
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  )),
                      ),
                      Positioned(
                        bottom: 18.0,
                        right: 40.0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//stack yapısını oluşturmamın sebebi positioned i kullanmakdı
//body ye stack tanımlanması birçok çocuğu barındırıyor olması