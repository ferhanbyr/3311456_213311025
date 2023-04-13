import 'package:flutter/material.dart';

class AraPage extends StatelessWidget {
  const AraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[300],
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(Icons.search),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ara',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Sonuçlar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 80,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.location_on),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Tripadvisor',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Fransa'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.account_circle),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Khan Academy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Fizikçi'),
                        ],
                      ),
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
