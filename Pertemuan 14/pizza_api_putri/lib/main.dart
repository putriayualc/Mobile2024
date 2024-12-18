import 'package:pizza_api_putri/httphelper.dart';

import './pizza.dart';
import 'package:flutter/material.dart';
import 'pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Putri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    List<Pizza> pizzas = await helper.getPizzaList();
    return pizzas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON'),
      ),
      body: FutureBuilder(
          future: callPizzas(),
          builder: (BuildContext context, AsyncSnapshot<List<Pizza>> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: (snapshot.data == null) ? 0 : snapshot.data!.length,
              itemBuilder: (BuildContext context, int position) {
                return Dismissible(
                  key: Key(position.toString()),
                  onDismissed: (item) {
                    HttpHelper helper = HttpHelper();
                    snapshot.data!.removeWhere(
                        (element) => element.id == snapshot.data![position].id);
                    helper.deletePizza(snapshot.data![position].id!);
                  },
                  child: ListTile(
                    title: Text(snapshot.data![position].pizzaName),
                    subtitle: Text(
                        '${snapshot.data![position].description} - \$${snapshot.data![position].price.toStringAsFixed(2)}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PizzaDetailScreen(
                            pizza: snapshot.data![position],
                            isNew: false,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PizzaDetailScreen(
                        pizza: Pizza(
                          id: 0, // Default ID
                          pizzaName: '', // Nama kosong untuk pizza baru
                          description: '', // Deskripsi kosong
                          price: 0.0, // Harga default
                          imageUrl: '', // URL gambar kosong
                        ),
                        isNew: true,
                      )),
            );
          }),
    );
  }
}
