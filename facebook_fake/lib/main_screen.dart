import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'add_friend_screen.dart';
import 'notification_screen';

class MenuItem{
  final IconData icon;
  final String title;
  MenuItem(this.icon,this.title);
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MenuItem> menu =[
    MenuItem(Icons.person_pin_rounded,"Profile"),
    MenuItem(Icons.security,"Security"),
    MenuItem(Icons.door_back_door_outlined,"Sign out"),
  ];
  
  @override
  Widget build(BuildContext context) {

    Widget buildMenuItem(MenuItem item)=>ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: (){Navigator.pop(context);},
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(190, 190, 190, 100),
        appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.doorbell)),
              ],
            ),
          title: const Text('Tabs Demo'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                height: 160,
                padding: const EdgeInsets.all(1),
                child: Column(
                  children:[
                    Container(
                      padding: const EdgeInsets.all(14),
                      child: const CircleAvatar(
                      radius: 50,
                      foregroundImage: ExactAssetImage("images/avatar4.jpg"),
                    ),   
                    ),      
                    const Text("cdth19c@gmail.com"),
                  ],
                ),
              ),
              ...menu.map(buildMenuItem).toList(),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            AddFriendScreen(),
            NotificationScreen(),
          ],
        ),
      ),
    );
  }
}
