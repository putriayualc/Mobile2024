import 'package:flutter/material.dart';
import '../models/item.dart'; // Impor model Item

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil argumen yang dikirim dari HomePage
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name), // Judul berdasarkan nama item
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan gambar produk
            Image.network(
              item.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Menampilkan nama dan harga produk
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Price: \Rp${item.price}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Stock: ${item.stock}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Rating: ${item.rating}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Tombol untuk melakukan aksi, misalnya membeli item
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan (misalnya, menambahkan ke keranjang)
                // Tambahkan logika sesuai kebutuhan
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
