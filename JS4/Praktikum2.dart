void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add('Putri Ayu Aliciawati');   // Menambahkan nama menggunakan .add()
  names2.addAll(['Putri Ayu Aliciawati', '2241720132']);   // Menambahkan nama dan NIM menggunakan .addAll()
  
  print(names1);
  print(names2);
}