import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363863),
        title: Text(
          'Resume Builder',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/cv');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF363863),
      ),
    );
  }
}
