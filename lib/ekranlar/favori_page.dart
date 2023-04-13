import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/detay_page.dart';
import 'package:forslag_2/model/gereksinim.dart';

class FavoriPage extends StatefulWidget {
  const FavoriPage({Key? key}) : super(key: key);

  @override
  _FavoriPageState createState() => _FavoriPageState();
}

class _FavoriPageState extends State<FavoriPage> {
  @override
  Widget build(BuildContext context) {
    //Filter the list to contain only favorited items
    final List<Gereksinim> _gereksinimList = Gereksinim.gereksinimList
        .where((element) => element.isFavori == true)
        .toList();

    bool toggleIsFavorite(bool isFavorite) {
      return !isFavorite;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: _gereksinimList.length == 0
            ? const Center(
                child: Text('Favori uygulama yok.'),
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: _gereksinimList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetayPage(
                                id: index,
                              )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child:
                                Image.asset(_gereksinimList[index].image2Url),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 10,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    bool isFavori = toggleIsFavorite(
                                        _gereksinimList[index].isFavori);
                                    _gereksinimList[index].isFavori = isFavori;
                                  });
                                },
                                icon: _gereksinimList[index].isFavori == true
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.favorite_border,
                                        color: Colors.red,
                                      )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
      ),
    );
  }
}
