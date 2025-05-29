import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  const MyButton2({super.key});

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
            SizedBox(height: 50),
            //ElevatedButton là 1 button nổi với hiệu ứng đổ bóng
            //thường được sử dụng cho cavs hành động chính trong ứng dụng.
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                //màu nền
                backgroundColor: Colors.black38,
                //màu nojiodung bên trong
                foregroundColor: Colors.white,
                //dậng hình của nút nhấn
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),),
                  //padding
                  padding: EdgeInsets.symmetric(
                  horizontal: 20,//chiều ngang
                  vertical: 15//chiều dọc

                ),
                //elevate
                elevation: 15,//độ bóng

              )
            ),

            //chọn thêm ít nhất 1 dạng nút nhấn khác đẻ thiết kế
            SizedBox(height: 20),
            IconButton(onPressed: (){print("IconButton");},
                icon: Icon(Icons.camera)


            ),

            //InkWel
            //không phải 1 button nhưng nó cho phép tạo hiệu ứng gợn sóng
            //khi nhấp vào bất kỳ widget nào
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                print("InkWel được nhấn !");
              },
              child:Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với InkWel"),

              ) ,
            )
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
