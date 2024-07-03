import 'package:flutter/material.dart';
import 'package:jopi_library/model/daftarbuku.dart';
import 'package:jopi_library/detailscreen.dart';

class MainScreen extends StatelessWidget {
  final String username;
  MainScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JoPi Library'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Hai, $username !',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Text(
                          'Member',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.person),
                        const Text(
                          'Mahasiswa',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Denda',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.money),
                        const Text(
                          'Rp 0',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Dipinjam',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.book),
                        const Text(
                          '3 buku',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/library.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Daftar Buku',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final Buku book = listBuku[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreen(book: book);
                        }));
                      },
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Image.asset(book.imageUrls),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      book.judul,
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(book.penulis),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: listBuku.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
