void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var coba = (7, 8);
  var ditukar = tukar(coba);
  print(ditukar);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Putri Ayu Aliciawati', 2241720132);
  print(mahasiswa);

  var mahasiswa2 = ('Putri Ayu Aliciawati', a: 2241720132, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
