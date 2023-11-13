import 'package:url_launcher/url_launcher.dart';

void _launchWhatsApp() async {
  String phoneNumber = '089617338298'; // Replace with the desired phone number
  String message = 'Hai, Saya mau kirim Bukti Transaksi'; // Replace with your desired message

  String whatsappUrl = "https://wa.me/$phoneNumber?text=${Uri.parse(message)}";

  // ignore: deprecated_member_use
  if (await canLaunch(whatsappUrl)) {
    // ignore: deprecated_member_use
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch WhatsApp.';
  }
}