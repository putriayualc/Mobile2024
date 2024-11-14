import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => NavigationDialogScreenState();
}

class NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Putri'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text("Please choose a color"),
          actions: <Widget>[
            TextButton(
              child: const Text('Red'),
              onPressed: () {
                color = const Color.fromARGB(255, 160, 75, 75);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                color = const Color.fromARGB(255, 56, 142, 96);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Blue'),
              onPressed: () {
                color = const Color.fromARGB(255, 35, 94, 150);
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}
