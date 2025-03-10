import 'dart:io';
//  fungsi untuk membuat kombinasi karakter dengan unicode
void combination(String a, int n, int length){
  if (n==0) {
    stdout.write('$a');
  } else{
    for (var i = 97; i < 97 + length ; i++) {     //  melakukan perulangan untuk menampilkan kombinasi yang diinginkan
    combination(a + String.fromCharCode(i), n-1, length);
    }
  }
}

//  fungsi main untuk inputkan jumlah dari pengguna dan dikirim ke fungsi combination
void main(){
  stdout.write('Masukkan jumlah karakter yang ingin dikombinasikan: ');
  int jumlah = int.parse(stdin.readLineSync()!);
  combination(' ', jumlah, jumlah);
}