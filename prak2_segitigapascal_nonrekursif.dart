import 'dart:io';
  void main() {
  stdout.write('Masukkan jumlah baris yang diinginkan untuk membuat segitiga pascal: ');
  int n = int.parse(stdin.readLineSync()!);
  var angka1 = <int>[];
  var angka2 = <int>[];

  for (int i = 1; i <= n; i++) {
    String spaces = ' ' * (n - i);

    if (i < 3) {
    angka1.add(1);
    angka2.add(1);
    print(spaces + angka1.join(' '));
    }  else{
    for (var j = 2; j < i; j++) {
    angka2.insert(j - 1, angka1[j - 2 ] + angka1[j - 1]);
  }

    angka1.clear();
    angka1.addAll(angka2);
    print(spaces + angka1.join(' '));
    angka2 = [1,1];
    }
  }
}