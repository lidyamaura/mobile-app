import 'package:flutter/material.dart';
import 'katsatumenu.dart';
import 'detailkatsatu.dart'; // Import file detailkatsatu.dart

class Kategori1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Kue'),
        backgroundColor: Color(0xFF675D50),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: kueList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman DetailKueScreen saat menu diklik
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailKueScreen(kueData: kueList[index]),
              ));
            },
            child: buildFoodItem(kueList[index]),
          );
        },
      ),
    );
  }

  Widget buildFoodItem(KueData kueData) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF3DEBA), // Mengubah latar belakang kotak menjadi pink
      ),
      child: Column(
        children: [
          Image.asset(
            kueData.image,
            height: 64.0,
          ),
          SizedBox(height: 16.0),
          Text(
            kueData.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif'),
          ),
          SizedBox(height: 8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              kueData.description,
              textAlign: TextAlign.center, // Membuat deskripsi berada di tengah
            ),
          ),
        ],
      ),
    );
  }
}
