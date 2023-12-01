import 'package:flutter/material.dart';
import '../savedrecipesdata.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void onTapDelete(index) {
    setState(() {
      savedRecipes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Rosane Jane',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account Info'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Saved Recipes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                                        backgroundColor:
                                            Colors.white, // <-- Button color
                                        foregroundColor:
                                            Colors.red, // <-- Splash color
                                      ),
                                      child:
                                          const Icon(Icons.bookmark_add_sharp),
                                    )),
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
