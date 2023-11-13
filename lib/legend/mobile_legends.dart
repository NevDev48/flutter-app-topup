// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/legend/service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Nominal>> _nominal;

  @override
  void initState() {
    super.initState();
    _nominal = NominalService().fetchNominal();
  }

  Future<void> _fetchNominal() async {
    final nominalService = NominalService();
    _nominal = nominalService.fetchNominal();
  }

  int selectedContainerIndex = -1;

  int selek = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 7, 53),
      appBar: AppBar(
        title: Text(
          "Yosia Store",
          style: TextStyle(fontFamily: 'inter'),
        ),
        leading: Icon(
          Icons.menu,
          // color: Colors.amber,
        ),
        backgroundColor: Color.fromARGB(255, 65, 39, 74),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          SizedBox(
            width: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          SizedBox(
            width: 24,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            icon: Icon(Icons.logout),
          ),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/Home.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Mobile Legends: Bang Bang',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 39,
                      width: 144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              child: Image.asset(
                                "Vector.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Pembayaran yang \n Aman",
                              style: GoogleFonts.raleway(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 41, 7, 53),
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 39,
                      width: 144,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              child: Image.asset(
                                "Headset.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "Layanan Pelanggan \n 24/7",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway',
                                color: Color.fromARGB(255, 41, 7, 53),
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Top up ML Diamond. Twilight Pass and Weekly Pass \n hanya dalam hitungan detik! Cukup masukan User ID\n dan Zone ID MLBB Anda. pilih jumlah Diamond yang Anda\n inginkan, selesaikan pembayaran, dan Diamond akan secara \n langsung ditambahkan ke akun Mobile Legends Anda.",
                  style: TextStyle(fontFamily: 'Inter', color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 191,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 11,
                        ),
                        Text(
                          "Masukan User ID",
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Color.fromARGB(255, 41, 7, 53),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 133,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF000000)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Masukan ID',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 133,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF000000)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Zone ID',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Untuk mengetahui User ID Anda, silakan klik menu profile dibagian kiri atas pada menu utama game. User ID akan terlihat dibagian bawah Nama Karakter Game Anda. Silakan masukkan User ID Anda untuk menyelesaikan transaksi. Contoh : 12345678(1234).',
                          style:
                              TextStyle(color: Color.fromARGB(255, 41, 7, 53)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pilih Nominal Top Up',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Color.fromARGB(255, 41, 7, 53),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FutureBuilder<List<Nominal>>(
                          future: _nominal,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasData) {
                              List<Nominal> nominalList = snapshot.data!;
                              return GridView.count(
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                childAspectRatio: 19 / 19,
                                crossAxisSpacing: 19,
                                mainAxisSpacing: 19,
                                children: nominalList.map((nominal) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedContainerIndex =
                                            nominalList.indexOf(nominal);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: selectedContainerIndex ==
                                                nominalList.indexOf(nominal)
                                            ? Color.fromARGB(255, 224, 161, 244)
                                            : Color.fromARGB(
                                                255, 212, 206, 206),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 60,
                                            width: 60,
                                            child: Image.asset(
                                                "assets/${nominal.image}"),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '${nominal.jumlah_diamond.toString()} Diamonds',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Dari',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.normal,
                                              color: Color.fromARGB(
                                                  255, 197, 113, 109),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            ' ${nominal.harga}',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.red,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              return Text('No data found');
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pilih Pembayaran',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Color.fromARGB(255, 41, 7, 53),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selek = 0;
                              });
                            },
                            child: Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(255, 212, 206, 206),
                                  ),
                                  color: selek == 0
                                      ? Color.fromARGB(255, 224, 161, 244)
                                      : Colors.white),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'BRI.png',
                                    width: 136,
                                    height: 40,
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Text('No Rek. \n 0052 0103 7928 537',
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 15)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selek = 1;
                              });
                            },
                            child: Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(255, 212, 206, 206),
                                  ),
                                  color: selek == 1
                                      ? Color.fromARGB(255, 224, 161, 244)
                                      : Colors.white),
                              child: Row(
                                children: [
                                  Image.asset('dana1.webp',
                                      width: 136, height: 40),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      child: Text(
                                        'No. \n 089617338298',
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 232,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Konfirmasi',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Color.fromARGB(255, 41, 7, 53),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Optional: jika anda sudah membayar Diamond tersebut, Anda konfirmasi pembayran anda dengan mengirim bukti pembayaran ke WhatsApp kami! Klik tombol dibawah ini!',
                          style:
                              TextStyle(color: Color.fromARGB(255, 41, 7, 53)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Color(0xFF000000)),
                        //     borderRadius: BorderRadius.circular(5),
                        //   ),
                        // child: TextField(
                        //   decoration: InputDecoration(
                        //     hintText: 'Alamat E-mail',
                        //     enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(color: Colors.white),
                        //     ),
                        //   ),
                        // ),

                        // SizedBox(
                        //   height: 10,
                        // ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _launchWhatsApp();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 41, 7, 53)),
                            child: Text('Konfirmasi lebih lanjut'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Top Up ML Diamonds, Twilight Pass & Weekly Diamond Pass di Indonesia',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Hanya butuh beberapa detik saja untuk beli Diamond, Twilight Pass and Weekly Diamond Pass di Codashop, top-up menjadi mudah, aman, dan praktis. Codashop dipercaya oleh jutaan gamers & pengguna aplikasi di Asia Tenggara termasuk Indonesia. Caranya mudah, tanpa perlu registrasi ataupun log-in! Klik disini untuk memulai. Dengan ML Diamonds kamu bisa mengakses konten premium dari hero terbaru hingga berbagai pilihan skin hero dan lainnya.',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal, color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchWhatsApp() async {
    String phoneNumber =
        '6289617338298'; // Replace with the desired phone number
    String message =
        'Hai, Saya mau kirim Bukti Transaksi'; // Replace with your desired message

    String whatsappUrl =
        "https://wa.me/$phoneNumber?text=${Uri.parse(message)}";

    // ignore: deprecated_member_use
    if (await canLaunch(whatsappUrl)) {
      // ignore: deprecated_member_use
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp.';
    }
  }
}
