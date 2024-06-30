import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    'images/Audi1.jpeg',
    'images/Audi2.jpeg',
    'images/Audi3.jpeg',
    'images/Audi4.jpeg',
    'images/Audi5.jpeg',
    'images/Audi5.jpeg',
  ];

  List<String> posts = [
    'images/Plane1.jpeg',
    'images/Plane2.jpeg',
    'images/Plane3.jpeg',
    'images/Plane4.jpeg',
    'images/Plane5.jpeg',
    'images/Plane6.jpeg',
  ];

  List<String> name = [
    'Arham Ali Khan',
    'Badar Aamir',
    'Al-Haad Aamir',
    'Farhan Ahmed',
    'Ali Raza',
    'Ashar Mehmood',
  ];

  List<String> caption = [
    'I love to make apps in flutter',
    'Github Graph Contribution',
    'Corolla',
    'Civic',
    'Land Cruiser',
    'Fortuner',
  ];

  List<String> comment = [
    'View all 45 comments',
    'View all 56 comments',
    'View all 23 comments',
    'View all 64 comments',
    'View all 75 comments',
    'View all 87 comments',
  ];

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.apple,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.messenger,
                size: 28,
              )),
        ],
        automaticallyImplyLeading: false,
        elevation: 1,
        title: const Text(
          'Instagram',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 38,
                                  backgroundImage: const AssetImage(
                                      'images/insta_border.jpeg'),
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundImage:
                                        AssetImage(profileImage[index]),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(name[index]),
                              ],
                            ),
                          )),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                    6,
                    (index) => Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundImage: const AssetImage(
                                        'images/insta_border.jpeg'),
                                    child: CircleAvatar(
                                      radius: 13,
                                      backgroundImage:
                                          AssetImage(profileImage[index]),
                                    ),
                                  ),
                                ),
                                Text(name[index]),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert_outlined)),
                              ],
                            ),
                            Image(
                                height: 300,
                                width: 500,
                                fit: BoxFit.fitWidth,
                                image: AssetImage(posts[index])),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.apple),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.chat_bubble_outline_sharp),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text('Liked by '),
                                      Text(
                                        'Faizan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(' and '),
                                      Text(
                                        'others',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(children: [
                                    Text(
                                      name[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(' '),
                                    Text(caption[index]),
                                  ]),
                                  Row(
                                    children: [Text(comment[index])],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
