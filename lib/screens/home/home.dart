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
        leading: const Icon(CupertinoIcons.camera_fill),
        title: Center(
          child: UiHelper.customImage(imageUrl: 'title-logo.png', width: 120),
        ),
        centerTitle: true,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.chat_bubble))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Stories Section
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stories(),
            ),

            // User Posts Section (Scrollable)
            HomePosts()
          ],
        ),
      ),
    );
  }
}
