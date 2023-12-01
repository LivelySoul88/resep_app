import 'package:flutter/material.dart';
import '../savedrecipesdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void onTapIcon(index) {
    setState(() {
      savedRecipes.add(trendingVideos[index]);
    });
  }

    void onTapIconRecipes(index) {
    setState(() {
      savedRecipes.add(popularRecipes[index]);
    });
  }


  void onTapDelete(index) {
    setState(() {
      savedRecipes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trending Videos 🔥',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingVideos.length,
                itemBuilder: (context, index) {
                  var trendingVideo = trendingVideos[index];
                  return Container(
                    width: 300, // Adjust the width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      child: Center(
                        child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.grey),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(trendingVideo),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 6,
                                    top: 6,
                                    child: ElevatedButton(
                                              onPressed: () => onTapIcon(index),
                                              style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                padding: const EdgeInsets.all(20),
                                                backgroundColor: Colors.white, // <-- Button color
                                                foregroundColor: Colors.black, // <-- Splash color
                                              ),
                                              child: const Icon(Icons.bookmark_add_outlined),
                                            )),
                              ],
                            )),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popular Category',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularRecipes.length,
                itemBuilder: (context, index) {
                  var popularRecipe = popularRecipes[index];
                  return Container(
                    width: 300, // Adjust the width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      child: Center(
                        child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.greenAccent),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(popularRecipe),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 6,
                                  top: 6,
                                  child: ElevatedButton(
                                              onPressed: () => onTapIconRecipes(index),
                                              style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                padding: const EdgeInsets.all(20),
                                                backgroundColor: Colors.white, // <-- Button color
                                                foregroundColor: Colors.black, // <-- Splash color
                                              ),
                                              child: const Icon(Icons.bookmark_add_outlined),
                                            )
                                ),
                              ],
                            )),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Saved Recipes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: savedRecipes.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300, // Adjust the width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      child: Center(
                        child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(savedRecipes[index]),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 6,
                                    top: 6,
                                    child: ElevatedButton(
                                              onPressed: () => onTapDelete(index),
                                              style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                padding: const EdgeInsets.all(20),
                                                backgroundColor: Colors.white, // <-- Button color
                                                foregroundColor: Colors.red, // <-- Splash color
                                              ),
                                              child: const Icon(Icons.bookmark_add_sharp),
                                            )
                                  ),
                              ],
                            )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> trendingVideos = [
  'assets/images/TrendingVideos_content/video_1.png',
  'assets/images/TrendingVideos_content/video_2.png',
  'assets/images/TrendingVideos_content/video_3.png',
  'assets/images/TrendingVideos_content/video_4.png',
  'assets/images/TrendingVideos_content/video_5.png',
  'assets/images/TrendingVideos_content/video_6.png',
  'assets/images/TrendingVideos_content/video_7.png',
];

List<String> popularRecipes = [
  'assets/images/PopularRecipesContent/PopularRecipes_1.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_2.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_3.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_4.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_5.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_6.jpg',
  'assets/images/PopularRecipesContent/PopularRecipes_7.jpg',
];
