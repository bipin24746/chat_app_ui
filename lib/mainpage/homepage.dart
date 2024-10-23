import 'package:chat_app_ui/container/chatlist.dart';
import 'package:chat_app_ui/container/head.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [ChatList()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.camera_alt_rounded,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
    );
  }
}
