import 'package:flutter/material.dart';
import 'package:jopi_library/login.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset('images/library.jpg'),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      child:  Text('Login'),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'JoPi Library',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: const Text(
                  'Perpustakaan JoLib didirikan pada tahun 2008 oleh seorang pegiat literasi bernama Jopi. Berawal dari keprihatinannya terhadap minimnya akses terhadap buku di daerahnya, Jopi memulai perpustakaan kecil di garasi rumahnya dengan koleksi buku seadanya.Seiring berjalannya waktu, JoLib berkembang pesat dengan dukungan dari komunitas dan pemerintah setempat. Kini, JoLib telah menjelma menjadi perpustakaan modern dengan koleksi buku yang lengkap dan beragam, serta berbagai fasilitas yang memadai.JoLib tidak hanya berfungsi sebagai tempat meminjam dan membaca buku, tetapi juga sebagai pusat edukasi dan komunitas bagi masyarakat.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                child: const Text(
                  'Koleksi Katalog: 117.000 buku',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/pram1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/andrea1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/andrea2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/higashino1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('images/higashino2.jpeg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
