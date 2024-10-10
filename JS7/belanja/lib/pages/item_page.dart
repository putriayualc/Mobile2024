import 'package:flutter/material.dart';
import '../models/item.dart'; // Impor model Item

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil data item yang dikirim dari HomePage
    final Item item = ModalRoute.of(context)?.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: item.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  item.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Price: Rp${item.price}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Stock: ${item.stock}',
              style: TextStyle(
                fontSize: 18,
                color: item.stock > 0 ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Rating: ${item.rating}',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: item.stock > 0
                  ? () {
                      // Implementasikan logika pembelian di sini
                    }
                  : null,
              child: Text(item.stock > 0 ? 'Buy Now' : 'Out of Stock'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
