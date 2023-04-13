import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/giris_page.dart';

class ExitPage extends StatelessWidget {
  const ExitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Çıkış yapmak istediğinizden emin misiniz?',
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () {
                  // Çıkış yapma işlemi
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const GirisPage(),
                    ),
                  );
                },
                child: const Text(
                  'Çıkış Yap',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white)),
          ],
        ),
      ),
    );
  }
}
