import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

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
            SizedBox(height: 50,),
            //ElevatedButton là 1 button nổi với hiệu ứng đổ bóng
            //thường được sử dụng cho cavs hành động chính trong ứng dụng.
            ElevatedButton(
                onPressed:(){
                  print("ElevatedButton");
                },
                child: Text("ElevatedButton",style: TextStyle(fontSize: 24),)),


            SizedBox(height: 20,),
            //dạng textButton là 1 button phẳng ko có độ bóng
            //thương được dùng cho các hành động thứ yếu
            //hoặc trong các thành phần như DiaLog ,Card.
            TextButton(onPressed: (){print("TextButton");},
                child: Text("TextButton",style: TextStyle(fontSize: 24),) ),


            SizedBox(height: 20,),
            //nút nhấn thứ 3 là nút nhán có viền bao quanh,không có màu nền và phù hợp cho các hành động thay thế
            OutlinedButton(onPressed: (){print("OutlinedButton");},
                child: Text("OutlinedButton",style: TextStyle(fontSize: 24),)),


            SizedBox(height: 20,),

            //nút nhận dạng icon
            //ko có văn bản bên trong chỉ bao gồm icon thường dùng trong appBAr và toolBar
            IconButton(onPressed: (){print("IconButton");},
                icon: Icon(Icons.favorite)),

            SizedBox(height: 20,),

            //FloatingActionButton là button hình tròn ,
            // nổi trên giao diện , thường dùng cho hành động chính của màn hình

            FloatingActionButton(
              onPressed: (){print("FloatingActionButton");},
              child: Icon(Icons.add),




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
