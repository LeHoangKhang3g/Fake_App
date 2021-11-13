import 'package:flutter/material.dart';

class Post{
  
  final String avatarName;
  final String username;
  final String time;
  final String status;
  final String fullStatus;
  final String mainImageName;
  bool full = false;

  Post(this.avatarName, this.username, this.time, this.status, this.fullStatus, this.mainImageName);
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key?key}):super(key: key);
  @override
  _HomeScreenState createState()=> _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  List<Post> posts=[
    Post("avatar1.jpg","Hoàng Khang","32 phút","Rap Việt mùa 2 chính thức lên sóng!",
    "Rap Việt mùa 2 chính thức lên sóng!\nKhông nằm ngoài sự mong đợi của fan rap khắp cả nước, vào ngày 16 thg 10, 2021 sắp tới chương trình sẽ chính thức phát sóng trên siêu ứng dụng giải trí Vieon và HTV2.","MainImage1.jpg"),
    Post("avatar2.jpg","Trương Huy","44 phút","Trang phục Jax Thần Trượng đang giảm giá sốc!",
    "Trang phục Jax Thần Trượng đang giảm giá sốc!\nCụ thể, chương trình giảm giá cực sốc nằm trong chuỗi sự kiện chào mừng chung kết thế giới. Mua ngay kẻo bỏ lỡ...","MainImage2.jpg"),
    Post("avatar3.jpg","Hoàng Phúc","2 giờ","Overlord light novel sắp ra mắt chương thứ 15.",
    "Overlord light novel sắp ra mắt chương thứ 15.\nTheo đó, tác giả của bộ truyện vừa thông báo chương tiếp theo của bộ truyện tiếp nối hành trình chinh phục thế giới của Ainz Ooal Gown. Được biết phần tiếp theo kể về cuộc hành trình đến vương quốc của tộc Elf của Momon, cùng đón chờ phần truyện ra mắt nhé!","MainImage3.jpg"),
  ];
  @override
  Widget build(BuildContext context){

    double width=MediaQuery.of(context).size.width;
    Widget buildCustomPost(int id){
      return Container(
        color: const Color.fromRGBO(255, 255, 255, 100),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    child: CircleAvatar(
                      foregroundImage: ExactAssetImage(
                        "images/"+posts[id].avatarName,
                      ),
                    )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[id].username,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        posts[id].time,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),                 
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              child: Text(
                posts[id].full?posts[id].fullStatus:posts[id].status,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(1),
                child:TextButton(
                onPressed: (){
                  setState(() {
                    posts[id].full=posts[id].full?false:true;
                  });
                }, 
                child: Text(
                  posts[id].full?
                  "Thu gọn":"Xem thêm"
                  ),
              ),
            ),
            Image.asset(
              "images/"+posts[id].mainImageName,
              width: width,
              fit:BoxFit.cover,
            ),
          ],
        ),
      );
    }
    return ListView(
      children: [
        buildCustomPost(0),
        buildCustomPost(1),
        buildCustomPost(2),
      ],
    );
  }
}


