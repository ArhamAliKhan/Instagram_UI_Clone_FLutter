import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/media_page.dart';
import '../pages/reels_page.dart';
import '../pages/search_page.dart';
import '../pages/user_page.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentpage,
        children: [
          HomePage(),
          SearchPage(),
          MediaPage(),
          ReelsPage(),
          UserPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: currentpage == 0 ? Colors.black87 : Colors.black54,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: currentpage == 1 ? Colors.black87 : Colors.black54,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MediaPage()));
                },
                icon: Icon(
                  Icons.add,
                  size: 30,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 3;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  size: 30,
                  color: currentpage == 3 ? Colors.black87 : Colors.black54,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 4;
                  });
                },
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: currentpage == 4 ? Colors.black87 : Colors.black54,
                )),
          ],
        ),
      ),
    );
  }
}
