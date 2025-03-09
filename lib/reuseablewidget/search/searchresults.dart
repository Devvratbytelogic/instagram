import 'package:flutter/cupertino.dart';
import 'package:instagram/utils/screen_utils.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = List.generate(
      200,
      (index) => 'https://picsum.photos/600/600?random=$index',
    );
    // Get screen width using the utility function
    double screenWidth = ScreenUtils.getScreenWidth(context);

    // Set columns dynamically based on screen width
    int crossAxisCount = screenWidth < 600
        ? 3 // Phones
        : screenWidth < 900
            ? 4 // Tablets
            : 5; // Desktops
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, // get column based on screen size
          crossAxisSpacing: 0, // column gap
          mainAxisSpacing: 0, // row gap
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(0), // Optional rounded corners
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
            clipBehavior: Clip.antiAlias,
            // child: FadeInImage.assetNetwork(
            //   placeholder: '',
            //   image: imageUrls[index],
            //   // fit: BoxFit.cover,
            // ),
          );
        },
      ),
    );
  }
}
