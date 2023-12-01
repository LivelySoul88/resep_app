import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("#CookWithMe", 
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white)),

              const Text("Find the best recipe for your cooking", 
                style: TextStyle(fontSize: 24, color: Colors.white)),

              Padding(padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBar()),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Start Cooking',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                // ignore: unnecessary_const
                const Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                )
              ),
              
              ),  
            ],
          )
        ),
      ),
    );
  }
}