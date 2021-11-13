import 'package:flutter/material.dart';


class InfoFake{
  final String avatarName;
  final String name;
  final String context;
  final String time;
  final IconData icon;

  InfoFake(this.avatarName,this.name,this.context,this.time,this.icon);
}


class NotificationScreen extends StatefulWidget{
  const NotificationScreen({Key?key}):super(key: key);
  @override
  _NotificationScreenState createState()=> _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen>{
  @override
  Widget build(BuildContext context){
    List<InfoFake> infoFakes = [
      InfoFake("avatar5.jpg","Alaxander Trung","Đã Phát Trực Tiếp","15 giây trước ",Icons.video_call_sharp),
      InfoFake("avatar3.jpg","Khang ZOZ","Đã nhắn tin với bạn"," 2 giờ ",Icons.message),
      InfoFake("avatar4.jpg","Linh Linh","Thông báo tin của bạn ấy","15 giây trước ",Icons.info_outline),

    ];
    List<InfoFake> infoFakess = [
      InfoFake("avatar1.jpg","Minh Đức","Đã Phát Trực Tiếp","15 giây trước ",Icons.video_camera_front_sharp),
      InfoFake("avatar2.jpg","Hoàng Idol","Đã nhắn tin với bạn","15 giây trước ",Icons.message),
      InfoFake("avatar5.jpg","Alaxander Trung","Đã gửi lời mời kết bạn","15 giây trước ",Icons.people),

    ];
    Widget buildInfoFake(InfoFake info)=> Row(
      children:[
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              child:  CircleAvatar(
                radius: 30,
                foregroundImage: ExactAssetImage("images/"+info.avatarName),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50 , left: 50),
              child: Icon(
                info.icon,
                color:  Colors.red,
                size: 36,
              ),
            ),  
          ],
        ),
        
        Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [ 
                Container(
                  margin: const EdgeInsets.all(10),
                  child:  Text(
                    info.name,
                    style:  const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child:  Text(info.context,
                            softWrap: true,
                  
                  ), 

                ),                  
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz)
                  )
              ],
            ),
            
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child:  Text(
                    info.time,
                    style: const  TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
                    "Thông Báo",
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
                    "Mới",
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
          ...infoFakes.map(buildInfoFake).toList(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: const Text(
                    "Trước Đó",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ...infoFakess.map(buildInfoFake).toList(),
        ],
      ),
    );
  }
}