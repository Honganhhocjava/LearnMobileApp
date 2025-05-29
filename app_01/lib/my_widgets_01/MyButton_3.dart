import 'package:flutter/material.dart';

class MyButton_3 extends StatelessWidget {
  const MyButton_3({super.key});

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
            //Có nút nhấn trên màn hình nhưng không cho phép ngta nhấn
            //khóa nút nhấn
            //ElevatedButton là 1 button nổi với hiệu ứng đổ bóng
            //thường được sử dụng cho cavs hành động chính trong ứng dụng.
            ElevatedButton(
              onPressed: null, //khóa nút lại
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                //màu nền
                backgroundColor: Colors.black38,
                //màu nojiodung bên trong
                foregroundColor: Colors.white,
                //dậng hình của nút nhấn
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                //padding
                padding: EdgeInsets.symmetric(
                  horizontal: 20, //chiều ngang
                  vertical: 15, //chiều dọc
                ),
                //elevate
                elevation: 15, //độ bóng
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                print("Pressed");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                //màu nền
                backgroundColor: Colors.black38,
                //màu nojiodung bên trong
                foregroundColor: Colors.white,
                //dậng hình của nút nhấn
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                //padding
                padding: EdgeInsets.symmetric(
                  horizontal: 20, //chiều ngang
                  vertical: 15, //chiều dọc
                ),
                //elevate
                elevation: 15, //độ bóng
              ),
            ),

            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print("InkWel được nhấn !");
              },
              onDoubleTap: (){print("Double Tap");},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với InkWel"),
              ),
            ),


            //tạo ra 1 button mà có cả ảnh và chữ dùng textbutton
            SizedBox(height: 50,),
            TextButton.icon(
                onPressed: (){},
                icon: Icon(Icons.favorite),
                label: Text("Yêu thích")),
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
