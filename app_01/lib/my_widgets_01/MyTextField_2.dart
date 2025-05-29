import 'package:flutter/material.dart';

class MyTextField_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField_2> {
  final _textController = TextEditingController();
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
            child: Column(
                children: [
                  SizedBox(height: 50),
                  TextField(
                    controller:_textController ,
                    decoration: InputDecoration(
                      labelText: "Nhập thông tin",
                      hintText: "Thông tin của bạn",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: IconButton(onPressed:(){
                        //vì đối tượng được truyền vào _textController nên chúng ta chỉ cần xóa nó đi là được
                        _textController.clear();
                      }, icon: Icon(Icons.clear)),

                    ),
                    //khi nội dung thay đổi thì chúng ta cần sửa nội dug
                    onChanged: (value) {
                    //bất kể state nào thì đều tồn tại set để khi chúng ta nhập lại thì các thoogn tin sẽ được chỉnh sủa
                      setState(() {
                        _inputText = value;
                      });
                    },
                  ),
                  SizedBox(height: 50,),
                  Text("bạn đã nhập: $_inputText",style: TextStyle(fontSize: 24),),

                ]
            )
        ),
      ),
    );
  }
}
