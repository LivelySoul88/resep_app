import 'package:flutter/material.dart';
import 'widgets/home_page.dart';
import 'widgets/savedrecipes_page.dart';
import 'widgets/notification_page.dart';
import 'widgets/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}
// ignore: camel_case_types
class title {
  static var titlePage= 'Get Amazing Recipes For Cooking';
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  if(_selectedIndex==0){
      title.titlePage = 'Get Amazing Recipes For Cooking';
    } else if(_selectedIndex==1){
      title.titlePage = 'Saved Recipes';
    } else if(_selectedIndex==2){
      title.titlePage = 'Notifications';
    } else if(_selectedIndex==3){
      title.titlePage = 'Profile';
    }
}



static const List<Widget> _pages = <Widget>[
  HomePage(),
  SavedRecipesPage(),
  NotificationPage(),
  ProfilePage(),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(title.titlePage),
  ),
  body: Center(
    child: _pages.elementAt(_selectedIndex),
  ),
  bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.red,
    items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Saved Recipes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.white,
    onTap: _onItemTapped,
  ),
);
  }
}
