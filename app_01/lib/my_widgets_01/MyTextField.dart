import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

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
      body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              //textfield là 1 widget cho phép người dùng nhập văn bản
              //Đây là thành phần thiết yếu trong hầu hết các ứng dụng từ biểu mẫu đăng nhập
                  //tìm kiếm đến nhập dữ liệu các ứng phức tạp
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  //khi chưa nhập gì thì hiển thị bên trong khung thì dùng hinttext
                  hintText: "Nhập vào họ và tên của bạn",
                  //thêm đường viền
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Example@gmail.com",
                  //giúp người dùng hiểu đây nhập gì sẽ chú thích ở bên dưới thì dùnghelpertext
                  helperText: "Nhập vào email cá nhân",
                  //muốn thêm icon thì dùng prefixIcon
                  prefixIcon: Icon(Icons.email),
                  //người dug nhập sai bây giơ muốn xóa di thì mình cho biểu tượng xóa
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: Colors.pinkAccent,

                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  hintText: "Nhập vào SĐT của bạn",
                  border: OutlineInputBorder(),
                ),
              //giơới hạn kiểu dữ liệu truyền vào
                //ví dụ nhập sđt thì chỉ cho phép nhập dáu + và số thôi
                keyboardType: TextInputType.phone,


                 ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Ngày sinh",
                  hintText: "Nhập vào ngày sinh của bạn",
                  border: OutlineInputBorder(),
                ),
                //giơới hạn kiểu dữ liệu truyền vào
                //ví dụ nhập sđt thì chỉ cho phép nhập dáu + và số thôi
                keyboardType: TextInputType.datetime,

              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  border: OutlineInputBorder(),
                ),
                //giơới hạn kiểu dữ liệu truyền vào
                //ví dụ nhập sđt thì chỉ cho phép nhập dáu + và số thôi
                keyboardType: TextInputType.phone,
                //tuy nhieên nhập mật khẩu đâu thể để hiển thị được cno phải cho nó chìm xuống chứ
                obscureText: true,
                obscuringCharacter: "*",

              ),
              SizedBox(height: 30,),
              TextField(
                onChanged: (value) {
                  print("đang nhập vào: $value");//bắt tất cả các hành động
                },
                onSubmitted:(value) {
                  print("Đã hoàn thành nội dụng: $value");//sau khi hoàn thành ấn enter nó sẽ hiện ra
                } ,
                decoration: InputDecoration(
                  labelText: "Câu hỏi bí mật",
                  //khi chưa nhập gì thì hiển thị bên trong khung thì dùng hinttext
                  hintText: "Nhập vào họ và tên của bạn",
                  //thêm đường viền
                  border: OutlineInputBorder(),
                ),
              ),
            ],

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
