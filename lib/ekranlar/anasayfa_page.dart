import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/detay_page.dart';
import 'package:forslag_2/model/gereksinim.dart';

class AnasayfaPage extends StatefulWidget {
  const AnasayfaPage({Key? key}) : super(key: key);

  @override
  _AnasayfaPageState createState() => _AnasayfaPageState();
}

class _AnasayfaPageState extends State<AnasayfaPage> {
  final List<Gereksinim> gereksinimList = Gereksinim.gereksinimList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Forslag',
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Uygulama Gereksinimleri',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: gereksinimList.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DetayPage(
                                id: index,
                              )),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            gereksinimList[index].imageUrl,
                            alignment: Alignment.center,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Text(
                            gereksinimList[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
