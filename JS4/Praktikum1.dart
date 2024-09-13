void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final List list = List.filled(5, null);
  list[1] = "Putri Ayu Aliciawati";  // Nama
  list[2] = "2241720132";  // NIM

  print(list.length);  // Mencetak panjang list (5)
  print(list[1]);  // Mencetak elemen pada indeks ke-1 (Nama)
  print(list[2]);  // Mencetak elemen pada indeks ke-2 (NIM)
  print(list);
}