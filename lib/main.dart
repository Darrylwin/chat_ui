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
      body: Stack(
        children: [
          Column(
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
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
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
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 25,
                right: 25,
              ),
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF27c1A9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favorites contacts",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundImage:
                                    Image.asset("assets/images/img1.jpeg")
                                        .image,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Alla",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
