import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang'),
        backgroundColor: Color(0xFFABC4AA),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle), // Ikon profil
            onPressed: () {
              // Tambahkan aksi ketika ikon profil diklik
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF675D50), Color(0xFFA9907E), Color(0xFFF3DEBA)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Resepin App',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 8.0), // Menambah jarak antara teks
                  Text(
                    'Masak Jadi Lebih Menyenangkan',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi logika otentikasi di sini
                      String username = _usernameController.text;
                      String password = _passwordController.text;
                      // Misalnya, validasi username dan password
                      if (username == 'admin' && password == 'admin123') {
                        // Jika otentikasi berhasil, navigasi ke halaman beranda
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      } else {
                        // Jika otentikasi gagal, tampilkan pesan kesalahan
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Login Gagal'),
                              content: Text('Username atau password salah.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black, // Warna teks hitam
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFABC4AA), // Warna latar belakang tombol
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
