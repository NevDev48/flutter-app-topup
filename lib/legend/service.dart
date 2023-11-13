import 'dart:typed_data';

class Nominal {
  final String image;
  final int jumlah_diamond;
  final String harga;

  Nominal({
    required this.image,
    required this.jumlah_diamond,
    required this.harga,
  });

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'jumlah_diamond': jumlah_diamond,
      'harga': harga,
    };
  }

  factory Nominal.fromMap(Map<String, dynamic> map) {
    return Nominal(
      image: map['image'],
      jumlah_diamond: map['jumlah_diamond'],
      harga: map['harga'],
    );
  }
}
