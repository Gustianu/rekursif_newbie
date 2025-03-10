import 'dart:io';
// Fungsi rekursif untuk menghitung kombinasi (nCr)
int kombinasi(int n, int r) {
  if (r == 0 || r == n) return 1; // Basis rekursi
  return kombinasi(n - 1, r - 1) + kombinasi(n - 1, r);
}

// Fungsi rekursif untuk mencetak Segitiga Pascal
void segitigaPascal(int baris, [int i = 0]) {
  if (i >= baris) return; // Basis rekursi (berhenti jika sudah mencapai jumlah baris)

  // Menambahkan spasi agar segitiga terlihat rapi
  stdout.write(' ' * (baris - i));

  // Mencetak setiap elemen dalam baris i
  for (int j = 0; j <= i; j++) {
    stdout.write('${kombinasi(i, j)} ');
  }
  print('');

  // Panggil rekursi untuk baris berikutnya
  segitigaPascal(baris, i + 1);
}

void main() {
  stdout.write('Masukkan jumlah baris segitiga pascal: ');
  int n = int.parse(stdin.readLineSync()!); // Jumlah baris segitiga pascal
  segitigaPascal(n);
}