import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter essentials → App Title "),
        ),
        body: Column(children: [
          const Center(
            child: Text(
              "The body of the app",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Click"),
            ),
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                size: 36.0,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.blueGrey,
              ),
              label: "Settings"),
        ]),
      ),
    );
  }
}
