import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String titleName = "The body of the app";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter essentials → App Title "),
        ),
        body: Center(
          child: currentIndex == 0 ? SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Center(
                child: Text(
                  titleName,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      titleName = "You've clicked";
                    });
                  },
                  child: const Text("Click"),
                ),
              ),
              Center(
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.blueGrey,
                    primary: Colors.green.shade50
                  ),
                  onPressed: () {
                    setState(() {
                      titleName = "The body of the app";
                    });
                  },
                  child: const Text("Undo"),
                ),
              )
            ]),
          ) : const SizedBox(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 36.0,
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blueGrey,
                ),
                label: "Settings"),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
