import 'dart:io';

  void main() {
  stdout.write('Masukkan jumlah baris yang diinginkan untuk membuat segitiga pascal: ');
  int n = int.parse(stdin.readLineSync()!);
  var angka1 = <int>[]; //  digunakan untuk menyimpan data segitiga pascal dari list angka2
  var angka2 = <int>[]; //  digunakan untuk menyimpan pemnjumlahan dari list angka1

  //  perulangan untuk menambahkan angka ke dalam list
  for (int i = 1; i <= n; i++) {
    String spaces = ' ' * (n - i);    //  untuk membuat spasi/jarak yang digunakan untuk membuat bentuk segitiga 
    //  jika input dari user kurang dari 3 maka tidak ada penghapusan angka didalam list
    if (i < 3) {
    angka1.add(1);
    angka2.add(1);
    print(spaces + angka1.join(' '));   //  print.join(' ') untuk menggabungkan semua angka didalam list dan diberi kan spasi dengan String ' '
    }  else{
    for (var j = 2; j < i; j++) {   //  jika input dari user lebih dari 3 maka akan menambahkan nilai pada index 1 dan seterusnya
    angka2.insert(j - 1, angka1[j - 2 ] + angka1[j - 1]);   //  untuk menambahkan data ke list angka2 pada index ke 1 dengan data dari list angka1 untuk dijumlahkan
  }

    angka1.clear(); //  menghapus semua isi data dari list angka1
    angka1.addAll(angka2);  //  menambahkan data dari list angka2 ke list angka1
    print(spaces + angka1.join(' '));   //  menampilkan list dari angka1 dan jarak untuk membentuk segitiga
    angka2 = [1,1];   //  mengubah semua isi dari list angka2 menjadi [1,1]
    }
  }
}