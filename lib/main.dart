import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'New Whatsapp UI',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 5,
              right: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Messages",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Online",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Groups",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "More",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
