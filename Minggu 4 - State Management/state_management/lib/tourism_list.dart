import 'package:flutter/material.dart';
import 'package:state_management/detail_screen.dart';
import 'package:state_management/list_item.dart';
import 'package:state_management/model/tourism_place.dart';

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList,
  }) : super(key: key);

  @override
  State<TourismList> createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Ubud',
      location: 'Bali',
      imageAsset: 'assets/images/ubud.jpg',
      description:
          'Ubud adalah sebuah desa adat sekaligus menjadi destinasi wisata di daerah kabupaten Gianyar, pulau Bali, Indonesia. Ubud terutama terkenal diantara para wisatawan mancanegara karena terletak di antara sawah dan hutan yang berjurang-jurang yang membuat pemandangan alam sangat indah.',
      day: 'Open Everyday',
      time: '09:00-18:00',
      ticket: 'Rp 40.000,-',
      img1: 'assets/images/ubud_1.jpg',
      img2: 'assets/images/ubud_2.jpg',
      img3: 'assets/images/ubud_3.jpg',
      img4: 'assets/images/ubud_4.jpg',
    ),
    TourismPlace(
      name: 'Canggu',
      location: 'Bali',
      imageAsset: 'assets/images/canggu.jpg',
      description:
          'Canggu adalah desa di kecamatan Kuta Utara, Kabupaten Badung, Bali, Indonesia. Canggu mulai terkenal setelah dibukanya Deus ex Machina. Pantainya membentang antara Kerobokan dan Pantai Echo Beach yang sejuk penuh dengan bar tepi pantai yang berwarna-warni, ombak selancar, kafe makanan lengkap, hipsters, dan gadis pantai.',
      day: 'Open Everyday',
      time: '24 Hours',
      ticket: 'Free',
      img1: 'assets/images/canggu_1.jpg',
      img2: 'assets/images/canggu_2.jpg',
      img3: 'assets/images/canggu_3.jpg',
      img4: 'assets/images/canggu_4.jpg',
    ),
    TourismPlace(
      name: 'Pantai Kuta',
      location: 'Bali',
      imageAsset: 'assets/images/kuta.jpg',
      description:
          'Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam sebagai lawan dari pantai Sanur. Selain itu, Lapangan Udara I Gusti Ngurah Rai terletak tidak jauh dari Kuta.',
      day: 'Open Everyday',
      time: '24 Hours',
      ticket: 'Free',
      img1: 'assets/images/kuta_1.jpg',
      img2: 'assets/images/kuta_2.jpg',
      img3: 'assets/images/kuta_3.jpg',
      img4: 'assets/images/kuta_4.jpg',
    ),
    TourismPlace(
      name: 'Candi Borobudur',
      location: 'Magelang',
      imageAsset: 'assets/images/borobudur.jpg',
      description:
          'Borobudur adalah candi atau kuil Buddha terbesar di dunia, sekaligus salah satu monumen Buddha terbesar di dunia. Monumen ini terdiri atas enam teras berbentuk bujur sangkar yang di atasnya terdapat tiga pelataran melingkar, pada dindingnya dihiasi dengan 2.672 panel relief dan aslinya terdapat 504 arca Buddha.',
      day: 'Open Everyday',
      time: '07:00-17:00',
      ticket: 'Rp 50.000,-',
      img1: 'assets/images/borobudur_1.png',
      img2: 'assets/images/borobudur_2.jpeg',
      img3: 'assets/images/borobudur_3.jpg',
      img4: 'assets/images/borobudur_4.jpg',
    ),
    TourismPlace(
      name: 'Malioboro',
      location: 'Yogyakarta',
      imageAsset: 'assets/images/malioboro.jpg',
      description:
          'Jalan Malioboro adalah nama salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke persimpangan Titik Nol Kilometer Yogyakarta. Secara keseluruhan, kawasan Malioboro terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta.',
      day: 'Open Everyday',
      time: '24 Hours',
      ticket: 'Free',
      img1: 'assets/images/malioboro_1.jpg',
      img2: 'assets/images/malioboro_2.jpg',
      img3: 'assets/images/malioboro_3.jpg',
      img4: 'assets/images/malioboro_4.jpg',
    ),
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Surabaya',
      imageAsset: 'assets/images/submarine.jpg',
      description:
          'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen. Monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952. Kapal selam ini pernah dilibatkan dalam Pertempuran Laut Aru untuk membebaskan Irian Barat dari pendudukan Belanda.',
      day: 'Open Everyday',
      time: '08:00-21:00',
      ticket: 'Rp 15.000,-',
      img1: 'assets/images/monkasel_1.jpg',
      img2: 'assets/images/monkasel_2.jpg',
      img3: 'assets/images/monkasel_3.jpg',
      img4: 'assets/images/monkasel_4.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Surabaya',
      imageAsset: 'assets/images/klenteng.jpg',
      description:
          'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan. Klenteng ini dibuka pada tahun 1999.',
      day: 'Open Everyday',
      time: '07:00-20:00',
      ticket: 'Rp 10.000,-',
      img1: 'assets/images/klenteng_1.jpeg',
      img2: 'assets/images/klenteng_2.jpg',
      img3: 'assets/images/klenteng_3.jpg',
      img4: 'assets/images/klenteng_4.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Surabaya',
      imageAsset: 'assets/images/sampoerna.jpg',
      description:
          'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah.',
      day: 'Open Everyday',
      time: '09:00-18:00',
      ticket: 'Free',
      img1: 'assets/images/sampoerna_1.jpg',
      img2: 'assets/images/sampoerna_2.jpg',
      img3: 'assets/images/sampoerna_3.jpg',
      img4: 'assets/images/sampoerna_4.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Surabaya',
      imageAsset: 'assets/images/pahlawan.jpg',
      description:
          'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945.',
      day: 'selasa-Minggu',
      time: '08:00-15:00',
      ticket: 'Rp 2.000,-',
      img1: 'assets/images/pahlawan_1.jpg',
      img2: 'assets/images/pahlawan_2.jpg',
      img3: 'assets/images/pahlawan_3.jpg',
      img4: 'assets/images/pahlawan_4.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Surabaya',
      imageAsset: 'assets/images/sby.jpg',
      description:
          'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura (hiu) dan baya (buaya).',
      day: 'Open Everyday',
      time: '24 Hours',
      ticket: 'Free',
      img1: 'assets/images/sby_1.jpg',
      img2: 'assets/images/sby_2.jpg',
      img3: 'assets/images/sby_3.png',
      img4: 'assets/images/sby_4.jpg',
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                setState(() {
                  if (value != null) {
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              }),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
