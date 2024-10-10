import 'package:flutter/material.dart';
import '../models/item.dart'; // Impor model Item

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Item 1', price: 100),
    Item(name: 'Item 2', price: 200),
    Item(name: 'Item 3', price: 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(item.name),
                    ),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
              )
            );
          },
        ),
      ),
    );
  }
}
