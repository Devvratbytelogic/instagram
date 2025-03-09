import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/reuseablewidget/home/posts.dart';
import 'package:instagram/reuseablewidget/home/stories.dart';
import 'package:instagram/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(CupertinoIcons.camera_fill),
        title: Center(
            child:
                UiHelper.customImage(imageUrl: 'title-logo.png', width: 120)),
        centerTitle: true,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble))
        ],
      ),
      body: Column(
        children: [
          // user stories section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Stories()],
            ),
          ),
          //   user post section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HomePosts(),
          )
        ],
      ),
    );
  }
}
