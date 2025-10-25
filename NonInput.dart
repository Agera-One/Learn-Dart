/*

pak budi memiliki toko buah
dia menjual berbgai macam buah
jika pembeli membeli buah dengan jumlah tertentu
pak budi akan memberikan diskon tertentu

dengan menggunakan list, buatlah cerita diatas menjadi kodingan
buat 2 buah list, yang pertama untuk nama buah, yang kedua untuk harga buah

*/

void main() {
  // 🗂️ Data Collection: List
  List<String> namaBuah = ['Apel', 'Pisang', 'Jeruk', 'Mangga', 'Anggur'];
  List<int> hargaBuah = [10000, 5000, 8000, 15000, 20000];

  // Contoh pembelian
  String buahDibeli = namaBuah[0]; // Apel
  int jumlahDibeli = 3; // Membeli 3 Apel
  int hargaPerBuah = hargaBuah[0]; // Harga Apel
  int totalHarga = hargaPerBuah * jumlahDibeli; // Total harga sebelum diskon

  // Diskon berdasarkan jumlah pembelian
  double diskon = 0.0;
  if (jumlahDibeli >= 5) {
    diskon = 0.2; // Diskon 20% untuk pembelian 5 atau lebih
  } else if (jumlahDibeli >= 3) {
    diskon = 0.1; // Diskon 10% untuk pembelian 3 atau lebih
  }

  double hargaSetelahDiskon = totalHarga - (totalHarga * diskon); // Total harga setelah diskon

  // 🖨️ Output semua hasil
  print('Buah yang dibeli: $buahDibeli');
  print('Jumlah yang dibeli: $jumlahDibeli');
  print('Harga per buah: Rp $hargaPerBuah');
  print('Total harga sebelum diskon: Rp $totalHarga');
  print('Diskon yang diberikan: ${diskon * 100}%');
  print('Total harga setelah diskon: Rp $hargaSetelahDiskon');
}