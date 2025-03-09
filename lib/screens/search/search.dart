import 'package:flutter/material.dart';
import 'package:instagram/reuseablewidget/search/categoryItem.dart';
import 'package:instagram/reuseablewidget/search/searchresults.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> categories = [
    {"icon": Icons.tv, "label": "IGTV"},
    {"icon": Icons.shopping_bag, "label": "Shop"},
    {"icon": Icons.style, "label": "Style"},
    {"icon": Icons.sports, "label": "Sports"},
    {"icon": Icons.directions_car, "label": "Auto"},
    {"icon": Icons.local_florist, "label": "Nature"},
    {"icon": Icons.music_note, "label": "Music"},
    {"icon": Icons.movie, "label": "Movies"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // search bar here
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                        prefixIcon: Icon(
                          Icons.search, color: Colors.white, // Change icon color
                          size: 24,
                        ),
                        enabledBorder: OutlineInputBorder(
                          // Border when not focused
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.white, // Border color when not focused
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // Border when focused
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.blue, // Border color when focused
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white, size: 24),
                    // Your additional icon
                    onPressed: () {
                      // Action when mic button is pressed
                      print("Mic button pressed");
                    },
                  ),
                ],
              ),
        
              SizedBox(
                height: 10,
              ),
        
              // Scrollable category Items
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child:
                          CategoryItem(icon: item['icon'], label: item['label']),
                    );
                  }).toList(),
                ),
              ),
        
              SizedBox(
                height: 10,
              ),
        
              SearchResults(),
            ],
          ),
        ),
      ),
    );
  }
}
