import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: item.imageUrl,
                child: Image.network(
                  item.imageUrl,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                item.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('Price: Rp${item.price}'),
              Text('Stock: ${item.stock}'),
              Text('Rating: ${item.rating}'),
            ],
          ),
        ),
      ),
    );
  }
}
