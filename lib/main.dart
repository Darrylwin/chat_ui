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
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
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
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
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
              padding: const EdgeInsets.only(
                top: 15,
                left: 25,
                right: 25,
              ),
              height: 220,
              decoration: const BoxDecoration(
                color: Color(0xFF27c1A9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
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
                        buildContactAvatar("Alla", "img1.jpeg"),
                        buildContactAvatar("Jully", "img2.jpeg"),
                        buildContactAvatar("Mike", "img3.jpeg"),
                        buildContactAvatar("Kler", "img4.jpeg"),
                        buildContactAvatar("Moane", "img5.jpeg"),
                        buildContactAvatar("Julie", "img6.jpeg"),
                        buildContactAvatar("Allem", "img7.jpeg"),
                        buildContactAvatar("Judith", "img8.jpeg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 365,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color(0xFFEFFFFC),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  buildConversationRow(
                      name: '~Spicy',
                      message: "Hello! How are you",
                      filename: 'img1.jpeg',
                      msgCount: 2,
                      timeReceived: "17:18"),
                  buildConversationRow(
                      name: "Marina",
                      message: "Lecteur Omniscient 🤲",
                      filename: 'img2.jpeg',
                      msgCount: 2,
                      timeReceived: "18:07"),
                  buildConversationRow(
                      name: 'Isaac',
                      message: "Djo 😌",
                      filename: 'img3.jpeg',
                      msgCount: 3,
                      timeReceived: "15:27"),
                  buildConversationRow(
                      name: 'Flora',
                      message: "🤦‍♂️",
                      filename: 'img4.jpeg',
                      msgCount: 3,
                      timeReceived: "15:27"),
                  buildConversationRow(
                      name: 'BDG',
                      message: "Darryl là même tu fatigues",
                      filename: 'img5.jpeg',
                      msgCount: 3,
                      timeReceived: "15:27"),
                  buildConversationRow(
                      name: 'L1 GROUPE D IAI-TOGO',
                      message: "Watashiwa Star",
                      filename: 'img6.jpeg',
                      msgCount: 101,
                      timeReceived: "15:27"),
                  buildConversationRow(
                      name: 'Shingeki No Hotaku',
                      message: "@Melsun @Charite @Fenec_Renard",
                      filename: 'img7.jpeg',
                      msgCount: 407,
                      timeReceived: "23:14"),
                  buildConversationRow(
                      name: 'You',
                      message: "https://Dartpad.dv",
                      filename: 'img8.jpeg',
                      msgCount: 0,
                      timeReceived: "12:34"),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF27c1A9),
        // mouseCursor: MouseCursor.defer,
        child: const Icon(
          Icons.mode_edit_rounded,
          size: 25,
          color: Color(0xFFEFFFFC),
        ),
        onPressed: () {},
      ),
      drawer: const Drawer(
        width: 275,
        backgroundColor: Colors.black38,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 56,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 030),
              Row(
                children: [
                  UserAvatar(filename: 'img3.jpeg'),
                  SizedBox(width: 12),
                  Text(
                    "Darryl-win",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              DrawerItem(title: "Account", icon: Icons.account_circle_sharp),
              DrawerItem(title: "Chats", icon: Icons.chat_outlined),
              DrawerItem(title: "Notifications", icon: Icons.notifications),
              DrawerItem(title: "Data and storage", icon: Icons.storage),
              DrawerItem(title: "Help", icon: Icons.help),

            ],
          ),
        ),
      ),
    );
  }

  Column buildConversationRow({required String name,
    required String message, required
    String filename, required
    int msgCount, required
    String timeReceived}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, right: 25),
              child: Column(
                children: [
                  Text(
                    timeReceived,
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(height: 15),
                  if (msgCount>0)
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF27c1A9),
                    child: Text(
                      msgCount.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          indent: 70,
        ),
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 020.0,
      ),
      child: Column(
        children: [
          UserAvatar(filename: filename),
          SizedBox(height: 3),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 56,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;

  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset("assets/images/$filename").image,
      ),
    );
  }
}
