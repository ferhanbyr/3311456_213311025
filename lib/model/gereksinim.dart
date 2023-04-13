import 'package:flutter/material.dart';

class Gereksinim {
  String title;
  String title1;
  String title2;
  String description;
  String description1;
  String imageUrl;
  String image2Url;
  String image3Url;
  bool isFavori;
  bool isFavori1;
  int id;

  static var length;

  Gereksinim({
    required this.id,
    required this.title,
    required this.title1,
    required this.title2,
    required this.description,
    required this.description1,
    required this.imageUrl,
    required this.image2Url,
    required this.image3Url,
    required this.isFavori1,
    required this.isFavori,
  });

  static List<Gereksinim> gereksinimList = [
    Gereksinim(
        id: 1,
        title: 'Sanat',
        title1: 'WOMBO DREAM',
        title2: 'WANNART',
        description:
            'Hayal gücünüzü en uç resimlerde canlandırmak ister misiniz? O zaman WOMBO ile tanışın siz hayal edin o tasarlasın.',
        description1:
            'Sizin için sanat nerede yer alıyor.Size uygun içeriklerikleriyle WANNART "la hiç sıkılmazsın.',
        imageUrl: 'assets/images/sanat.jpg',
        image2Url: 'assets/images2/sanat2.jpg',
        image3Url: 'assets/images3/sanat3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 2,
        title: 'Alışveriş',
        title1: 'LUFİAN',
        title2: 'FANUS ORGANİK',
        description:
            'Lufian ile modada bir adım öndesin.Lufian"a gel sende tarzı yakala.Lufian şimdi bir numara.',
        description1:
            'Günümüzde üreticeye ulaşmak çok zor.Aldımız ürünlerin doğallığından emin olmak artık Fanus Organik ile çok kolay.',
        imageUrl: 'assets/images/alısveris.jpg',
        image2Url: 'assets/images2/alışveriş2.jpg',
        image3Url: 'assets/images3/alışveriş3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 3,
        title: 'Seyahat',
        title1: 'TRAVELBOAST',
        title2: 'AİRBNB',
        description:
            'Kendi benzersiz gezinizi oluşturmak istemez misiniz? o zaman TRAVELBOAST ile bir rota belirle.',
        description1:
            'Benzersiz evleri keşfetmek mi?Hadi hazırlanın AİRBNB ile mükemmel ev deneyimleri yaşayacaksınız.',
        imageUrl: 'assets/images/seyahat.jpg',
        image2Url: 'assets/images2/seyahat2.jpg',
        image3Url: 'assets/images3/seyahat3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 4,
        title: 'Eğitim',
        title1: 'PHOTOmath',
        title2: 'LİNGOkids',
        description:
            'Ahh matematik! O soruya takılıp kalma artık PHOTOmath var. Çek yolla cevabı hemen elinde.',
        description1:
            'Siz duymadınız mı?LİNGOKİDS ile ingilizce öğrenmeyen çocuk kalmadı.Lingokids eğlendirirken öğretir.',
        imageUrl: 'assets/images/egitim.jpg',
        image2Url: 'assets/images2/eğitim2.jpg',
        image3Url: 'assets/images3/eğitim3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 5,
        title: 'Eğlence',
        title1: 'JUSTwatch',
        title2: 'Asphalt:8 Airborne',
        description:
            'Ne izleyeceğini bilmiyor musun? O zaman geçmiş izlenimlerine bir bakalım ve sana en uygun içeriği karşına getirelim.',
        description1:
            'Ne kadar hızlısın görelim bakalım.Var mısın yarışmaya?İyi olan arabayı alır.',
        imageUrl: 'assets/images/eğlence.jpg',
        image2Url: 'assets/images2/eğlence2.jpg',
        image3Url: 'assets/images3/eğlence3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 6,
        title: 'Bilim',
        title1: 'UZAY',
        title2: 'POPULAR SCİENCE',
        description:
            'Sen de o boşluğu merak ediyorsun,demi.O zaman Uzay tam sana göre.',
        description1:
            'Bilim o kadar hızlı ilerliyor ki hızına yetişmek ancak Popular Science ile olur.',
        imageUrl: 'assets/images/bilim.jpg',
        image2Url: 'assets/images2/bilim2.jpg',
        image3Url: 'assets/images3/bilim3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 7,
        title: 'Sağlık',
        title1: 'BREATH hub',
        title2: 'HEALTY MATE',
        description:
            'Sadece nefesle dönüşüm yolculuğuna çıkabilirsin.Breath Hub her yerde seninle.',
        description1:
            'Healty mate ile harekete geçme zamanıdır.Ne duruyorsunuz hadi sizde doktorlar kadar uzmanlaşın.',
        imageUrl: 'assets/images/saglık.jpg',
        image2Url: 'assets/images2/sağlık2.jpg',
        image3Url: 'assets/images3/sağlık3.jpg',
        isFavori: false,
        isFavori1: false),
    Gereksinim(
        id: 8,
        title: 'Canlılar',
        title1: 'PATİEVİ',
        title2: 'PATİME GELSİN',
        description:
            'Sokaklarda.barınaklarda onlarca canlı var ve bizi bekliyorlar.Patievi ile artık sahiplenmek daha kolay.',
        description1:
            'Aradın mamayı bulamadın mı Patime gelsin markete gel o zaman.Aradığın ürün anında kapında.',
        imageUrl: 'assets/images/hayvanlar.jpg',
        image2Url: 'assets/images2/hayvanlar3.jpg',
        image3Url: 'assets/images3/hayvanlar1.jpg',
        isFavori: false,
        isFavori1: false),
  ];
}
