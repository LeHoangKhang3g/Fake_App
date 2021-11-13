import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  const Profile({Key?key}):super(key: key);

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: ListView(
        
      ),
    );
  }
}