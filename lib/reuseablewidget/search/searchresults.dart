import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/utils/screen_utils.dart';
import 'package:shimmer/shimmer.dart';

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
    int crossAxisCount =
        screenWidth < 600
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
            borderRadius: BorderRadius.circular(0),
            clipBehavior: Clip.antiAlias, // Optional rounded corners
            child: CachedNetworkImage(
              imageUrl: imageUrls[index],
              errorWidget:
                  (context, url, error) => const Icon(CupertinoIcons.photo),
              placeholder:
                  (context, url) => AspectRatio(
                    aspectRatio: 1, // Maintains a square shape
                    child: Shimmer.fromColors(
                      baseColor: CupertinoColors.systemGrey4,
                      highlightColor: CupertinoColors.systemGrey5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey4,
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
              fit: BoxFit.cover,
            ),
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