class Item {
  final String name;
  final double price;
  final String imageUrl; // Atribut baru untuk foto produk
  final int stock;       // Atribut baru untuk stok
  final double rating;   // Atribut baru untuk rating

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}
