import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFriendInfo{
  final String avatarName;
  final String name;
  final String time;
  final int mutualFriends;
  
  AddFriendInfo(this.avatarName,this.name,this.time,this.mutualFriends);
}

class AddFriendScreen extends StatefulWidget{
  const AddFriendScreen({Key?key}):super(key: key);
  @override
  _AddFriendScreen createState()=> _AddFriendScreen();
}
class _AddFriendScreen extends State<AddFriendScreen>{
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    List<AddFriendInfo> addFriendInfos = [
      AddFriendInfo("avatar5.jpg" ,"Alaxander Khang" , "2 ngày", 10),
      AddFriendInfo("avatar2.jpg" ,"Alaxander Trung", "6 tuần", 6),
      AddFriendInfo("avatar3.jpg" ,"Alaxander Khang Pro", "5 ngày", 15),

    ];

    Widget buildAddFriend(AddFriendInfo info)=> Row(
      children: [
        Container(
          height: 150,
          margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
          child:  Row(
            children:  [
              CircleAvatar(
                    radius: 75,
                    foregroundImage: ExactAssetImage("images/"+info.avatarName),
              ),
            
              Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [ 
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Text(
                          info.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),    
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(width-485, 5, 10, 0),
                        child:  Text(
                        info.time,
                          style: const TextStyle(
                          color : Colors.grey,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child:  Text(
                      info.mutualFriends.toString() + " bạn chung ",
                        style: const TextStyle(
                          color : Colors.grey,
                        ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: OutlinedButton(
                          child: const Text("Chấp nhận"),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blue),
                            foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                          ),
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(10),
                        child: OutlinedButton(
                          child: const Text("Xóa"),
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white54),
                            foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ); 
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
          //In dấu ... dùng để gắn list mới ra vào cái list hiện tại  
          ...addFriendInfos.map(buildAddFriend).toList(),
          
        ],
      ),
    );
  }
}