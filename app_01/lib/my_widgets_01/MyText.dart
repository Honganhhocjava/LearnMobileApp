import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    // trả về một Sacffold - widget cung cấp bố cục Material Design cơ bản
    //màn hình

    return Scaffold(
      //tiêu đề của ứng dụng
      appBar: AppBar(
        //tiêu đề
        title: Text("App 01"),
        //màu nền tiêu đề
        backgroundColor: Colors.pink,
        //độ nâng / độ bóng của appbar
        elevation: 4,
        //nút nhấn
        actions: [
          IconButton(
            onPressed: () {
              print("B1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("B2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("B3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      //backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          //Text cơ bản
          children: [
            //cách bên trên 1 đoạn
            const SizedBox(height: 50),
            const Text("Nguyễn Hồng Ánh"),
            //tạo 1 khoảng cách
            const SizedBox(height: 20),
            //tạo ra
            const Text(
              "Xin chào các bạn đến với giao diện!",
              //cho căn giữa
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueGrey,
                //cho chữ in đậm
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Flutter là mobile UI framework của Google để tạo ra các giao diện chất lượng cao trên iOS và Android trong khoảng thời gian ngắn. Flutter hoạt động với những code sẵn có được sử dụng bởi các lập trình viên, các tổ chức.",
              //cho căn giữa
              textAlign: TextAlign.center,
              //quy định số lượng dòng
              maxLines: 2,
              //cho phép tràn
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                //fontSize: 30,
                color: Colors.black,
                //cho chữ in đậm
                //fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        child: const Icon(Icons.add_ic_call), //cho biiểu tượng vào
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),

          BottomNavigationBarItem(
            icon: Icon(Icons.personal_injury),
            label: "Cá nhân",
          ),
        ],
      ),
    );
  }
}
