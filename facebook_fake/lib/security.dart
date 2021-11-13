import 'package:flutter/material.dart';

class Security extends StatefulWidget{
  const Security({Key?key}):super(key: key);

  @override
  State<Security> createState() => SecurityState();
}

class SecurityState extends State<Security>{
  
  EdgeInsets padding1 = const EdgeInsets.fromLTRB(20,5,20,5);
  EdgeInsets padding2 = const EdgeInsets.fromLTRB(30,5,30,5);
  EdgeInsets padding3 = const EdgeInsets.fromLTRB(40,5,40,5);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              "Chúng tôi thu thập những loại thông tin nào?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.cyan,
              ),
            ),
          ),
          Container(
            padding: padding1,
            child: const Text(
              "- Để cung cấp Sản phẩm của Facebook, chúng tôi phải xử lý thông tin về bạn."
              "Những loại thông tin mà chúng tôi thu thập phụ thuộc vào cách bạn sử dụng Sản phẩm của chúng tôi."
              "Bạn có thể tìm hiểu cách truy cập cũng như xóa thông tin mà chúng tôi thu thập bằng cách đi tới phần Cài đặt Facebook và Cài đặt Instagram.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Những hoạt động và thông tin do bạn và người khác thực hiện/cung cấp.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Thông tin và nội dung bạn cung cấp. Chúng tôi thu thập nội dung, thông tin liên lạc và các thông tin khác "
              "mà bạn cung cấp khi sử dụng Sản phẩm của chúng tôi, bao gồm cả khi bạn đăng ký một tài khoản, tạo hoặc chia sẻ nội dung "
              "và nhắn tin hay liên lạc với người khác. Các thông tin này có thể bao gồm thông tin trong hoặc về nội dung bạn cung cấp (ví dụ siêu dữ liệu), "
              "chẳng hạn như địa điểm chụp ảnh hoặc ngày tạo tệp. Thông tin này cũng có thể bao gồm nội dung bạn nhìn thấy thông qua các tính năng chúng tôi cung cấp, "
              "chẳng hạn như tính năng máy ảnh, để chúng tôi có thể thực hiện những việc như đề xuất mặt nạ và bộ lọc mà bạn có thể thích hoặc cung cấp "
              "cho bạn mẹo sử dụng các định dạng của máy ảnh. Các hệ thống của chúng tôi tự động xử lý nội dung cũng như thông tin liên lạc "
              "mà bạn và người khác cung cấp để phân tích ngữ cảnh và ý nghĩa cho các mục đích được mô tả bên dưới. "
              "Hãy tìm hiểu thêm về cách kiểm soát những ai có thể xem nội dung mà bạn chia sẻ.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Mạng và kết nối. Chúng tôi thu thập thông tin về những người, Trang, tài khoản, hashtag và nhóm mà bạn kết nối cũng như cách bạn tương tác "
              "với họ trên các Sản phẩm của chúng tôi, chẳng hạn như những người bạn liên lạc nhiều nhất hoặc các nhóm bạn tham gia. "
              "Ngoài ra, chúng tôi còn thu thập thông tin liên hệ nếu bạn chọn tải lên, đồng bộ hoặc nhập thông tin đó từ thiết bị "
              "(chẳng hạn như sổ địa chỉ, nhật ký cuộc gọi hoặc nhật ký SMS). Chúng tôi sử dụng thông tin đó để thực hiện những việc như "
              "giúp bạn và những người khác tìm thấy người mà bạn có thể biết cũng như phục vụ các mục đích khác nêu bên dưới.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Cách sử dụng của bạn. Chúng tôi thu thập thông tin về cách bạn sử dụng Sản phẩm của chúng tôi, chẳng hạn như loại nội dung bạn xem hoặc tương tác; "
              "các tính năng bạn sử dụng; hành động bạn thực hiện; những người hoặc tài khoản bạn tương tác; và thời gian, tần suất cũng như "
              "khoảng thời gian hoạt động của bạn. Ví dụ: chúng tôi ghi lại thời gian bạn sử dụng và lần gần đây nhất bạn dùng Sản phẩm của chúng tôi, "
              "cũng như các bài viết, video và nội dung khác mà bạn xem trên Sản phẩm này. Chúng tôi cũng thu thập thông tin về cách bạn sử dụng các tính năng, "
              "chẳng hạn như tính năng máy ảnh của chúng tôi.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Thông tin về các giao dịch được thực hiện trên Sản phẩm của chúng tôi. Nếu bạn sử dụng Sản phẩm của chúng tôi để mua hàng "
              "hoặc thực hiện các giao dịch tài chính khác (chẳng hạn như khi bạn mua hàng trong trò chơi hoặc quyên góp), thì chúng tôi sẽ "
              "thu thập thông tin về hoạt động mua hàng hoặc giao dịch đó. Thông tin này bao gồm thông tin thanh toán, chẳng hạn như số thẻ tín dụng "
              "hoặc thẻ ghi nợ và thông tin thẻ khác; thông tin xác thực và thông tin tài khoản khác; cũng như chi tiết lập hóa đơn, giao hàng và liên hệ.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Điều người khác làm và thông tin họ cung cấp về bạn. Ngoài ra, chúng tôi còn nhận và phân tích nội dung, thông tin liên lạc và thông tin "
              "mà những người khác cung cấp khi sử dụng Sản phẩm của chúng tôi. Thông tin này có thể bao gồm thông tin về bạn, chẳng hạn như khi "
              "người khác chia sẻ hoặc bình luận về ảnh có mặt bạn, gửi tin nhắn cho bạn hay tải lên, đồng bộ hoặc nhập thông tin liên hệ của bạn.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Thông tin về thiết bị.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Như mô tả bên dưới, chúng tôi thu thập thông tin từ và về máy tính, điện thoại, TV được kết nối cũng như các thiết bị kết nối web khác "
              "mà bạn sử dụng để tích hợp với Sản phẩm của chúng tôi. Chúng tôi cũng kết hợp thông tin này trên các thiết bị khác nhau mà bạn sử dụng. "
              "Ví dụ: chúng tôi sử dụng thông tin thu thập được về cách bạn sử dụng Sản phẩm của chúng tôi trên điện thoại để cá nhân hóa tốt hơn nội dung "
              "(bao gồm quảng cáo) hoặc tính năng bạn thấy khi sử dụng Sản phẩm của chúng tôi trên một thiết bị khác, "
              "chẳng hạn như máy tính xách tay/máy tính bảng, hoặc để đo lường xem bạn có thực hiện hành động đối với quảng cáo mà chúng tôi hiển thị "
              "cho bạn trên điện thoại hay một thiết bị khác hay không.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Dưới đây là thông tin chúng tôi thu được từ các thiết bị này:",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Các thuộc tính thiết bị: những thông tin như hệ điều hành, phiên bản phần cứng và phần mềm, mức pin, "
              "cường độ tín hiệu, dung lượng bộ nhớ trống, plugin, loại trình duyệt, tên cũng như loại của tệp và ứng dụng.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Hoạt động trên thiết bị: thông tin về các hoạt động và hành vi được thực hiện trên thiết bị, chẳng hạn như liệu một cửa sổ ở nền "
              "trước hay nền sau hoặc các hoạt động của chuột (thông tin này có thể giúp phân biệt người thật với các bot).",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Thông tin nhận dạng: thông tin nhận dạng duy nhất, ID thiết bị và các thông tin nhận dạng khác, chẳng hạn như từ trò chơi, "
              "ứng dụng hay tài khoản bạn dùng, cũng như ID thiết bị gia đình (hoặc các thông tin nhận dạng khác, duy nhất cho Sản phẩm "
              "của các công ty thuộc Facebook được liên kết với cùng một thiết bị/tài khoản).",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Tín hiệu thiết bị: Tín hiệu Bluetooth và thông tin về các cột phát sóng, đèn hiệu và điểm truy cập Wi-Fi ở gần.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Dữ liệu từ cài đặt thiết bị: thông tin bạn cho phép chúng tôi nhận thông qua cài đặt thiết bị mà bạn bật, "
              "chẳng hạn như quyền truy cập vào vị trí GPS, máy ảnh hoặc ảnh của bạn.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Mạng và kết nối: thông tin như tên của nhà mạng di động hoặc ISP, ngôn ngữ, múi giờ, số điện thoại di động, địa chỉ IP, tốc độ kết nối "
              "và trong một số trường hợp là thông tin về các thiết bị khác ở gần hoặc trên mạng của bạn, để chúng tôi có thể thực hiện những việc như giúp bạn "
              "truyền video từ điện thoại đến TV.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding3,
            child: const Text(
              "- Dữ liệu cookie: dữ liệu từ các cookie được lưu trữ trên thiết bị của bạn, bao gồm cả cài đặt và ID cookie. "
              "Hãy tìm hiểu thêm về cách chúng tôi sử dụng cookie trong Chính sách cookie của Facebook và Chính sách cookie của Instagram.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Thông tin từ đối tác.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: padding2,
            child: const Text(
              "Nhà quảng cáo, nhà phát triển ứng dụng và nhà phát hành có thể gửi thông tin cho chúng tôi qua Công cụ kinh doanh trên Facebook mà họ sử dụng, "
              "bao gồm cả plugin xã hội (chẳng hạn như nút Thích), phương thức Đăng nhập bằng Facebook, API và SDK của chúng tôi hoặc Facebook pixel. "
              "Các đối tác này cung cấp thông tin về hoạt động của bạn bên ngoài Facebook - bao gồm thông tin về thiết bị của bạn, trang web bạn truy cập, "
              "giao dịch mua hàng bạn thực hiện, quảng cáo bạn xem và cách bạn sử dụng dịch vụ của họ - cho dù bạn có tài khoản Facebook hay không hoặc đã đăng nhập "
              "Facebook hay chưa. Ví dụ: nhà phát triển trò chơi có thể sử dụng API của chúng tôi để cho chúng tôi biết những trò chơi mà bạn chơi hoặc doanh nghiệp "
              "có thể cho chúng tôi biết về giao dịch mua hàng bạn đã thực hiện trong cửa hàng của họ. Chúng tôi cũng nhận thông tin về giao dịch mua hàng cũng như "
              "hành động trực tuyến và ngoại tuyến của bạn từ các nhà cung cấp dữ liệu bên thứ ba có quyền cung cấp thông tin của bạn cho chúng tôi."

              "Các đối tác nhận dữ liệu của bạn khi bạn truy cập hoặc sử dụng dịch vụ của họ hay thông qua bên thứ ba cộng tác với họ. "
              "Chúng tôi yêu cầu mỗi đối tác này đều phải có quyền thu thập, sử dụng và chia sẻ dữ liệu của bạn một cách hợp pháp trước khi cung cấp bất kỳ "
              "dữ liệu nào cho chúng tôi. Tìm hiểu thêm về các loại đối tác cung cấp dữ liệu cho chúng tôi."

              "Để tìm hiểu thêm về cách chúng tôi sử dụng cookie cùng với Công cụ kinh doanh trên Facebook, hãy xem lại Chính sách cookie của Facebook "
              "và Chính sách cookie của Instagram.",
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}