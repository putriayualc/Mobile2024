void main() {
  // Memanggil fungsi dengan parameter bernama
sapa();
}

void sapa({String nama = 'Teman', int usia = 18, String sapaan = 'Halo'}) {
  print('$sapaan, $nama! Usia Anda adalah $usia.');
}
