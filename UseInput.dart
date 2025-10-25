/*

pak budi memiliki toko buah
dia menjual berbgai macam buah
jika pembeli membeli buah dengan jumlah tertentu
pak budi akan memberikan diskon tertentu

dengan menggunakan list, buatlah cerita diatas menjadi kodingan
buat 2 buah list, yang pertama untuk nama buah, yang kedua untuk harga buah

*/

import 'dart:io';

void main() {
  // 🗂️ Data Collection: List
  List<String> namaBuah = ['Apel', 'Pisang', 'Jeruk', 'Mangga', 'Anggur'];
  List<int> hargaBuah = [10000, 5000, 8000, 15000, 20000];

  // Tampilkan daftar buah
  print('Daftar Buah di Toko Pak Budi:');
  for (int i = 0; i < namaBuah.length; i++) {
    print('${i + 1}. ${namaBuah[i]} - Rp ${hargaBuah[i]}');
  }

  // Input buah yang ingin dibeli
  stdout.write('Pilih nomor buah yang ingin dibeli: ');
  int? pilihan = int.tryParse(stdin.readLineSync() ?? '');
  if (pilihan == null || pilihan < 1 || pilihan > namaBuah.length) {
    print('Pilihan tidak valid.');
    return;
  }

  String buahDibeli = namaBuah[pilihan - 1];
  int hargaPerBuah = hargaBuah[pilihan - 1];

  // Input jumlah yang ingin dibeli
  stdout.write('Masukkan jumlah yang ingin dibeli: ');
  int? jumlahDibeli = int.tryParse(stdin.readLineSync() ?? '');
  if (jumlahDibeli == null || jumlahDibeli < 1) {
    print('Jumlah tidak valid.');
    return;
  }

  int totalHarga = hargaPerBuah * jumlahDibeli;

  // Diskon berdasarkan jumlah pembelian
  double diskon = 0.0;
  if (jumlahDibeli >= 5) {
    diskon = 0.2; // Diskon 20% untuk pembelian 5 atau lebih
  } else if (jumlahDibeli >= 3) {
    diskon = 0.1; // Diskon 10% untuk pembelian 3 atau lebih
  }

  double hargaSetelahDiskon = totalHarga - (totalHarga * diskon);

  // 🖨️ Output semua hasil
  print('\nBuah yang dibeli: $buahDibeli');
  print('Jumlah yang dibeli: $jumlahDibeli');
  print('Harga per buah: Rp $hargaPerBuah');
  print('Total harga sebelum diskon: Rp $totalHarga');
  print('Diskon yang diberikan: ${diskon * 100}%');
  print('Total harga setelah diskon: Rp $hargaSetelahDiskon');
}