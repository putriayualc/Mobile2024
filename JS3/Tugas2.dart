void main() {
  String namaLengkap = "Putri Ayu Aliciawati";
  String nim = "2241720132";

  for (int num = 2; num <= 201; num++) {
    if (isPrime(num)) {
      print("$num adalah bilangan prima.");
      print("Nama: $namaLengkap");
      print("NIM: $nim\n");
    }
  }
}

// Fungsi untuk mengecek apakah suatu bilangan prima atau tidak
bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
