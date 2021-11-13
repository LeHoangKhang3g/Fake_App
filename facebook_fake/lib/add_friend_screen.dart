import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFriendScreen extends StatefulWidget{
  const AddFriendScreen({Key?key}):super(key: key);
  @override
  _AddFriendScreen createState()=> _AddFriendScreen();
}
class _AddFriendScreen extends State<AddFriendScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: const Text(
                    "Bạn bè",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder() , padding: const EdgeInsets.all(20)),
                    child: const Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.black,
                    ),
                        onPressed: () {},
                )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: const Text(
                    "Lời mời Kết bạn",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Xem tất cả",
                  style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color : Colors.blue,
                  ),  
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child:  Row(
                  children: const [
                    CircleAvatar(
                          radius: 50,
                          foregroundImage: ExactAssetImage("images/avatar5.jpg"),
                    ),           
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Alaxander Trung",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "2 ngày",
                        style: TextStyle(
                          color : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "1000+ bạn chung",
                      style: TextStyle(
                        color : Colors.grey,
                      ),
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        child: const Text("Chấp nhận"),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue),
                          foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                        ),
                      ),

                      OutlinedButton(
                        child: const Text("Xóa"),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white54),
                          foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}