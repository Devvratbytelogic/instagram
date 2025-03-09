import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final List<Map<String, String>> storyArr = [
    {
      "img":
          "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp",
      "name": "Your Story",
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "ExplorerX",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW9xQ78H87lbecbEQ8uwmUQAwZpbUTknLzPA&s",
      "name": "StarlightGazer",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "PixelPioneer",
    },
    {
      "img":
          "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
      "name": "NeonVoyager",
    },
    {
      "img": "https://pixlr.com/images/generator/text-to-image.webp",
      "name": "EchoNomad",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/009/273/280/small/concept-of-loneliness-and-disappointment-in-love-sad-man-sitting-element-of-the-picture-is-decorated-by-nasa-free-photo.jpg",
      "name": "CyberMaverick",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
      "name": "LunarWhiz",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/11/19/11/11/hands-1838658_1280.jpg",
      "name": "SkylineDrifter",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/041/166/062/small/ai-generated-hawk-high-quality-image-free-photo.jpg",
      "name": "VelvetStorm",
    },
    {
      "img":
          "https://imagekit.io/blog/content/images/2019/12/image-optimization.jpg",
      "name": "QuantumDiver",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/028/626/672/small_2x/hd-image-ai-generative-free-photo.jpeg",
      "name": "ShadowBlink",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: storyArr.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFfeda75),
                        Color(0xFFfa7e1e),
                        Color(0xFFd62976),
                        Color(0xFF962fbf),
                        Color(0xFF4f5bd5),
                      ],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(storyArr[index]["img"] ??
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5AwV9M46_bvY-C_j-7Lvx85ucE_Cun4AdJTBJdVy5NeO0Oh0wcsE0-3QHnEacjLmssHY&usqp=CAU"),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  storyArr[index]['name'] ?? "Guest User",
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
