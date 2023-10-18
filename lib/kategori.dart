import 'package:flutter/material.dart';
import 'kategorimenu.dart';
import 'detailmenu.dart';
import 'home.dart';

class KategoriScreen extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<KategoriMenu> listData;
  final String pageTitle;

  KategoriScreen({
    required this.title,
    required this.backgroundColor,
    required this.listData,
    required this.pageTitle,
  });

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
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(data: listData[index]),
              ));
            },
            child: buildFoodItem(listData[index]),
          );
        },
      ),
    );
  }

  Widget buildFoodItem(KategoriMenu data) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF3DEBA),
      ),
      child: Column(
        children: [
          Image.asset(
            data.image,
            height: 64.0,
          ),
          SizedBox(height: 16.0),
          Text(
            data.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif'),
          ),
          SizedBox(height: 8.0),
          Align(
            alignment: Alignment.center,
            child: Text(
              data.description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
