import 'package:flutter/material.dart';
class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormbasicdemoState();

}

class _FormbasicdemoState extends State<FormBasicDemo> {
  //sử dụng global key để truy cập form
  final _formKey = GlobalKey<FormState>();
  String? _name;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Form cơ bản"),
        ),

      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          //form là widger chứa và quản lý các trường nhạp liệu
          //Key: đupwjc sử dụng để truy cập vào traạng thái của Form
          //phương thức validate() kiểm tra tính hợp lệ của tất cả các trường
          //phương thức save() gọi làm onsaved của mỗi trường
          //phương thức reste() đặt lại giá trị của tất cả các trường
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Họ và tên ",
                    hintText: "Nhập họ và tên của bạn",
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value){
                    _name = value;
                  },
                ),

                SizedBox(height: 20,),
                // hiiển thị nhiều nội dung trên dòng
                Row(
                  children: [
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()) {
                        //kiểm tra dữ liệu đã nhập đúng hay chưa
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Xin chào $_name"))
                        );


                      }

                    }, child: Text("Submit")),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                      });

                    }, child: Text("Reset")),
                    
                  ],
                )
              ],


            ),




            ),



      ),
      );
  }
}