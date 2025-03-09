import 'package:flutter/material.dart';

class HomePosts extends StatefulWidget {
  const HomePosts({super.key});

  @override
  State<HomePosts> createState() => _HomePostsState();
}

class _HomePostsState extends State<HomePosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            // visualDensity: VisualDensity(horizontal: 4), // Adjust vertical density
            leading:  CircleAvatar(
              backgroundImage: AssetImage('assets/images/home/dp1.jpg'),
              backgroundColor: Colors.blue,
              radius: 30,
              // child: Text(arrNames[index]),
            ),
            title: Text(
              'John Doe', // Replace with dynamic user name
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '2 hours ago • Exploring the world!', // Replace dynamically
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert_outlined),
              onPressed: () {
                // Add functionality here (e.g., show options menu)
              },
            ),
          ),
        ],
      ),
    );
  }
}
