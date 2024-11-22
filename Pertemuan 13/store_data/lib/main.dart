import 'dart:convert';
import './pizza.dart';
import 'package:flutter/material.dart';

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
  String pizzaString = '';

  List<Pizza> myPizzas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON'),
      ),
      body: Container(
        child: Scaffold(
          // body: Text(pizzaString),
          body: ListView.builder(
            itemCount: myPizzas.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(myPizzas[index].pizzaName),
                subtitle: Text(myPizzas[index].description),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    readJsonFile().then((value){
      setState(() {
        myPizzas = value;
      });
    });
  }

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context).loadString('assets/pizzalist.json');
    List pizzaMapList = jsonDecode(myString);

    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList){
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

  String converToJSON(List<Pizza> pizzas){
    return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  }
}
