import 'package:flutter/material.dart';
import 'katempatmenu.dart';
import 'detailkatempat.dart'; // Import file detailkatempat.dart

class KategoriEmpatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Snack'),
        backgroundColor: Color(0xFF675D50),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: makananTempatList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman DetailMakananTempatScreen saat menu diklik
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailMakananTempatScreen(
                    makananTempatData: makananTempatList[index]),
              ));
            },
            child: buildFoodItem(makananTempatList[index]),
          );
        },
      ),
    );
  }

  Widget buildFoodItem(MakananTempatData makananTempatData) {
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
            makananTempatData.image,
            height: 64.0,
          ),
          SizedBox(height: 16.0),
          Text(
            makananTempatData.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif'),
          ),
          SizedBox(height: 8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              makananTempatData.description,
              textAlign: TextAlign.center, // Membuat deskripsi berada di tengah
            ),
          ),
        ],
      ),
    );
  }
}
