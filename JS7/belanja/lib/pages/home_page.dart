import 'package:flutter/material.dart';
import '../models/item.dart'; // Impor model Item

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Salt',
      price: 1000,
      imageUrl: 'https://cdn1-production-images-kly.akamaized.net/ac3jELqw9vk6gRcsrK-VokTLpoE=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4214710/original/019361800_1667548137-sea_salt.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Sugar',
      price: 2000,
      imageUrl: 'https://awsimages.detik.net.id/community/media/visual/2018/05/15/3c1cf407-c317-451b-b0ae-0939d455fd38.jpeg?w=600&q=90',
      stock: 5,
      rating: 4.0,
    ),
    Item(
      name: 'Ginger',
      price: 3000,
      imageUrl: 'https://awsimages.detik.net.id/community/media/visual/2020/11/16/tercatat-dalam-al-quran-jahe-jadi-campuran-minuman-di-surga-1.jpeg?w=600&q=90',
      stock: 0,
      rating: 3.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },
              child: Card(
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: item.imageUrl, // Unik untuk setiap item
                      child: Image.network(
                        item.imageUrl,
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('Rp${item.price}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
