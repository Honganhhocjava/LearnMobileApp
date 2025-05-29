import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

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
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          //trang trí
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            //cho 1 cái bóng ở dưới
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),


              ),
            ]
          ) ,

          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "Nguyễn Hồng Anh",
              style :TextStyle(
                color: Colors.white,
                fontSize: 24,
              )
            ),
          ),

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
