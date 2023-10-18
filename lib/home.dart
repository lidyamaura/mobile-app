import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'detailpage.dart';
import 'makanberat.dart';
import 'katsatu.dart';
import 'katdua.dart';
import 'kattiga.dart';
import 'katempat.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Selamat Datang',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Baguette Script',
          ),
        ),
        backgroundColor: Color(0xFFABC4AA),
      ),
      backgroundColor: Color(0xFFFFF8DE),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Masak Apa Hari Ini?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/nasigoreng.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/sateayam.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/browniescoklat.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/risoles.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/escampur.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              buildCategoryBox('Kue', Kategori1Screen(), Icons.cake),
              buildCategoryBox('Makanan', KategoriDuaScreen(), Icons.fastfood),
              buildCategoryBox(
                  'Minuman', KategoriTigaScreen(), Icons.local_drink),
              buildCategoryBox('Snack', KategoriEmpatScreen(), Icons.icecream),
            ],
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Menu Recommended',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: makananBeratList.length,
              itemBuilder: (BuildContext context, int index) {
                return buildFoodItem(makananBeratList[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Keranjang',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 80, 89, 97),
        unselectedItemColor: Color(0xFF675D50),
        unselectedLabelStyle: TextStyle(
          color: Colors.brown,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.green,
        ),
      ),
    );
  }

  Widget buildCategoryBox(
      String categoryName, Widget pageToNavigate, IconData iconData) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => pageToNavigate,
          ));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xFFBCA37F),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 40.0,
                color: Colors.black,
              ),
              SizedBox(height: 8.0),
              Text(
                categoryName,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFoodItem(MakananBeratData makananBeratData) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(
            makananBeratData: makananBeratData,
          ),
        ));
      },
      child: Container(
        width: 160.0,
        height: 200.0,
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xFFC1D0B5),
        ),
        child: Column(
          children: [
            Image.asset(
              makananBeratData.image,
              height: 64.0,
            ),
            SizedBox(height: 16.0),
            Text(
              makananBeratData.name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
              ),
            ),
            SizedBox(height: 8.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                makananBeratData.description,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
