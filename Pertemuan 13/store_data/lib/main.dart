import 'dart:convert';
import './pizza.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo Putri',
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
  // String pizzaString = '';
  // List<Pizza> myPizzas = [];
  final storage = const FlutterSecureStorage();
  final myKey = 'myPass';
  final pwdController = TextEditingController();
  String myPass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('JSON'),
        title: const Text('Path Provider'),
      ),
      // body: Container(
      //   child: Scaffold(
      //     // body: Text(pizzaString),
      //     body: ListView.builder(
      //       itemCount: myPizzas.length,
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           title: Text(myPizzas[index].pizzaName),
      //           subtitle: Text(myPizzas[index].description),
      //         );
      //       },
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: pwdController,
              ),
              ElevatedButton(
                  onPressed: () {
                    writeToSecureStorage();
                  },
                  child: const Text('Save Value')),
              ElevatedButton(
                  onPressed: () {
                    readFromSecureStorage().then((value) {
                      setState(() {
                        myPass = value;
                      });
                    });
                  },
                  child: const Text('Read Value')),
              Text(myPass),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // readJsonFile().then((value) {
    //   setState(() {
    //     myPizzas = value;
    //   });
    // });
  }

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist.json');
    List pizzaMapList = jsonDecode(myString);

    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }

    // setState(() {
    //   pizzaString = myString;
    // });
    String json = converToJSON(myPizzas);
    print(json);
    return myPizzas;
  }

  String converToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  }

  Future writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future<String> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }
}
