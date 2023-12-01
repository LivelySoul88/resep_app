import 'package:flutter/material.dart';
import '../savedrecipesdata.dart';
class SavedRecipesPage extends StatefulWidget {
  const SavedRecipesPage({super.key});

  @override
  State<SavedRecipesPage> createState() => _SavedRecipesPageState();
}

class _SavedRecipesPageState extends State<SavedRecipesPage> {
    void onTapDelete(index) {
    setState(() {
      savedRecipes.removeAt(index);
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text(
              'Your saved Recipes',
              style: TextStyle(fontSize: 24),
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
      )
    );
  }
}

