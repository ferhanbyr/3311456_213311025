import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/giris_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Ekranı',
      home: GirisPage(),
    );
  }
}
