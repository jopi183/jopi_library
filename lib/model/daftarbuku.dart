class Buku {
  String judul;
  String kodebuku;
  String penulis;
  String deskripsi;
  String tersedia;
  String imageUrls;

  Buku({
    required this.judul,
    required this.kodebuku,
    required this.penulis,
    required this.deskripsi,
    required this.tersedia,
    required this.imageUrls,
  });
}
var listBuku = [
  Buku(
    judul: 'Orang-Orang Biasa',
    kodebuku: '20.33.051',
    penulis: 'Andrea Hirata',
    deskripsi: 'Novel ini mengisahkan rencana perampokan oleh 10 orang bersahabat demi mendapatkan uang untuk melanjutkan pendidikan kedokteran Aini anak dari Dinah. Tindakan tersebut memang tidak bisa dibenarkan, tetapi hal ini menggambarkan bahwa orang tua akan bekerja keras agar anak dapat mencapai cita-cita dan tentunya dengan cara yang baik pula. ',
    tersedia: 'Terseda 4 dari 5 total koleksi',
    imageUrls: 'images/andrea1.jpg',
  ),
  Buku(
      judul: 'Laskar Pelangi',
      kodebuku: '20.33.062',
      penulis: 'Andrea Hirata',
      deskripsi: 'Sinopsis novel Laskar Pelangi bermula ketika sekolah Muhammadiyah terancam akan dibubarkan oleh Depdikbud Sumsel jika siswa baru tidak mencapai sejumlah sepuluh anak. Kala itu, sembilan anak yang menghadiri upacara pembukaan telah menunggu di depan sekolah.',
      tersedia: 'Terseda 0 dari 3 total koleksi',
      imageUrls: 'images/andrea2.jpg',
  ),
  Buku(
      judul: 'Bumi Manusia',
      kodebuku: '20.33.019',
      penulis: 'Pramoedya Ananta Toer',
      deskripsi: 'Novel Bumi Manusia bercerita tentang perjuangan tokoh Minke memperjuangan kedudukan pribumi melawan diskriminasi Belanda pada masa kolonial Belanda di awal abad keduapuluh. Sebagai anak bupati, Minke bisa bersekolah, dan ia menggunakan pengetahuannya untuk melawan kolonialisme Belanda.',
      tersedia: 'Terseda 1 dari 1 total koleksi',
      imageUrls: 'images/pram1.jpg',
  ),
  Buku(
    judul: 'Black Showman dan Pembunuh di Kota Tak Bernama',
    kodebuku: '20.33.100',
    penulis: 'Keigo Higashino',
    deskripsi: 'Black Showman dan Pembunuhan di Kota Tak Bernama merupakan novel misteri karya Keigo Higashino, penulis seri Detektif Galileo yang laris hingga mancanegara. Kisahnya sendiri berpusat pada misteri kematian Kamio Eiichi, seorang mantan guru SMP ditemukan tewas tercekik di halaman rumahnya.',
    tersedia: 'Terseda 1 dari 7 total koleksi',
    imageUrls: 'images/higashino1.jpg',
  ),
  Buku(
    judul: 'The Devotion of Suspect X',
    kodebuku: '20.33.099',
    penulis: 'Keigo Higashino',
    deskripsi: 'The Devotion of Suspect X menceritakan kisah tentang seorang janda bernama Yasuko Hanaoka bersama anak perempuannya, Misato. Setelah resmi bercerai, sang mantan suami yang bernama Togashi tiba-tiba kembali di hadapannya ketika Yasuko tengah bekerja di sebuah restoran bento.',
    tersedia: 'Terseda 0 dari 1 total koleksi',
    imageUrls: 'images/higashino2.jpeg',
  )
];
