import 'package:flutter/material.dart';
import 'package:forslag_2/ekranlar/anasayfa_page.dart';

import 'package:forslag_2/ekranlar/home_page.dart';

class GirisPage extends StatefulWidget {
  const GirisPage({super.key});

  @override
  _GirisPage createState() => _GirisPage();
}

class _GirisPage extends State<GirisPage> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'FORSLAG',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          labelText: 'Kullanıcı Adı',
                          labelStyle: TextStyle(color: Colors.white)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Lütfen kullanıcı adınızı girin.';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.white)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Lütfen şifrenizi girin.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
