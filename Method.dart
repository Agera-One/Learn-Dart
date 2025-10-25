void main() {
  String name = "Dzaki_Prasetyo_Iswandanu";
  String hobby = "    watching movie    ";
  String gender = "man";

  print(name.length); // Mengembalikan jumlah karakter
  print(name.compareTo("dzaki")); // Membandingkan dengan string lain

  print(name.toLowerCase()); // Mengubah semua huruf menjadi huruf kecil
  print(name.toUpperCase()); // Mengubah semua huruf menjadi huruf besar

  print(name.toLowerCase().replaceAll('a', '*')); // Mengganti semua 'a' dengan '*'
  print(name.toLowerCase().replaceAll('a', '^')); // Mengganti semua 'a' dengan '*'

  print(name.substring(15, 20)); // Mengambil substring dari indeks 0 sampai 4
  print(name.split('_')); // Memecah string menjadi list berdasarkan '_'

  print("apakah variabel nama kosong? ${name.isEmpty}"); // Apakah string kosong
  print("apakah variabel nama tidak kosong? ${name.isNotEmpty}"); // Apakah string tidak kosong

  print("apakah hobby mengandung movie? ${hobby.contains('movie')}"); // Apakah string mengandung kata 'movie'
  print("apakah hobby mengandung running? ${hobby.contains('running')}"); // Apakah string mengandung kata 'running'

  print("apakah gender diawali dengan m? ${gender.startsWith('m')}"); // Apakah string diawali dengan 'm'
  print("apakah gender diawali dengan x? ${gender.startsWith('x')}"); // Apakah string diawali dengan 'x'

  print("apakah gender diakhiri dengan n? ${gender.endsWith('n')}"); // Apakah string diakhiri dengan 'n'
  print("apakah gender diakhiri dengan y? ${gender.endsWith('y')}"); // Apakah string diakhiri dengan 'y'

  // Menghapus spasi di awal dan akhir
  print("before: *${hobby}*");
  print("after: *${hobby.trim()}*");

  // Menghapus spasi di awal
  print("before: *${hobby}*");
  print("after: *${hobby.trimLeft()}*");

  // Menghapus spasi di akhir
  print("before: *${hobby}*");
  print("after: *${hobby.trimRight()}*");

  print(gender.padLeft(25, '_')); // Menambahkan '_' di kiri agar panjangnya 25
  print(gender.padRight(25, '_')); // Menambahkan '_' di kanan agar panjangnya 25
}