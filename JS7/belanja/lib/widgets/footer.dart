import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'Developed by Putri Ayu Aliciawati',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            'NIM: 2241720132',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigasi menggunakan go_router
              context.go('/about'); // Contoh jika ada halaman 'about'
            },
            child: Text('About Us'),
          ),
        ],
      ),
    );
  }
}
