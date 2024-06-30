import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<String> highlight_pics = [
    'images/Plane1.jpeg',
    'images/Plane2.jpeg',
    'images/Plane3.jpeg',
    'images/Plane4.jpeg',
    'images/Plane5.jpeg',
    'images/Plane6.jpeg',
  ];

  List<String> highlight_names = [
    'Arham Ali Khan',
    'Badar Aamir',
    'Al-Haad Aamir',
    'Farhan Ahmed',
    'Ali Raza',
    'Ashar Mehmood',
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'arham.alikhan.5896',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box_outlined,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('images/Plane1.jpeg'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        '850',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'followers',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        '15',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'following',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              Column(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Arham',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Flutter Developer',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Expanded(
                          child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 50,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 50,
                              width: 165,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Share Profile',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.person_add)),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(1),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            6,
                            (index) => Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 35,
                                        backgroundImage: const AssetImage(
                                            'images/insta_border.jpeg'),
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              AssetImage(highlight_pics[index]),
                                        ),
                                      ),
                                      Text(highlight_names[index]),
                                    ],
                                  ),
                                )),
                      ),
                    )),
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(tabs: [
                        Tab(
                          icon: Icon(
                            Icons.grid_on,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.person_pin_outlined,
                            size: 31,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: screenHeigth * 0.4,
                        child: TabBarView(children: [
                          Column(
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                size: 250,
                              ),
                              Text(
                                'No posts yet',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.person_outline,
                                size: 250,
                              ),
                              Text(
                                'No Tags yet',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
