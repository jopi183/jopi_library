import 'package:flutter/material.dart';
import 'package:jopi_library/model/daftarbuku.dart';
class DetailScreen extends StatelessWidget{
  final Buku book;
  const DetailScreen({Key?key, required this.book}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(book.imageUrls,height: 400,),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                book.judul + ' - ' + book.penulis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                book.kodebuku,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text(
                book.tersedia,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                book.deskripsi,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}