import 'package:flutter/material.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 35,
              )),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text('Media Page'),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 23),
                ))
          ]),
    );
  }
}
