import 'package:flutter/material.dart';
class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormbasicdemoState();

}

class _FormbasicdemoState extends State<FormBasicDemo> {
  //sử dụng global key để truy cập form
  final _formKey = GlobalKey<FormState>();
  final _fullnameController =TextEditingController();
  final _emailController =TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  String? _name;
  String? _selectedCity;
  final List<String> _cities = ["haNoi","TpHCM","Hp","Đà Nẵng","Cần Thơ"];

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
          //phương thức reset() đặt lại giá trị của tất cả các trường
          key: _formKey,
          child: Column(
            children: [
              //textformfield là phiên ban mở rộng của textfield tích hợp với form
              //khi sử dụng thì có validate là hàm kiểm tra tính hợp lệ của dữ liệu
              //controler cho phép các bạn truy cập vaà edrdenie fguiea skh tirij trong textformfield
              //ngoài ra còn có obscuretext cho phép ẩn văn bản
              //AutovalidateMode điều khiển thovowiifd ddierm validate được kích hoạt
              TextFormField(
                controller: _fullnameController,
                decoration: InputDecoration(
                  labelText: "Họ và tên ",
                  hintText: "Nhập họ và tên của bạn",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value){
                  _name = value;
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "vui lòng nhập lại họ và tên";
                  }
                },
              ),

              SizedBox(height: 20,),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Nhập vào email của bạn",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress ,
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Vui lòng nhập email";
                  }
                  //biểu thức chính quy
                  if(!RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$").hasMatch(value)){
                      return "email không hợp lệ!";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30,),
              TextFormField(
                controller: _passwordController,
                decoration:InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập mật khẩu",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                          ? Icons.visibility
                        : Icons.visibility_off,

                      ),
                      onPressed:(){
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      }),
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscurePassword,
                validator: (value){
                  if(value == null || value.isEmpty) {
                    return "Vui lòng nhập mật khẩu";
                  }

                  if(value.length <6) {
                    return "mật khẩu phải có ít nhất 6 ký tự";
                  }
                  return null;
                },


              ),

              SizedBox(height: 30,),

             DropdownButtonFormField(
                 decoration: InputDecoration(
                   labelText: "Thành phố",
                   border: OutlineInputBorder(),
                 ),
                 value: _selectedCity,
                 items: _cities.map((city){
                   return DropdownMenuItem(child: Text(city),
                   value: city,);
                 }).toList(),


                 onChanged: (value){},
               validator: (value){
                 if(value == null || value.isEmpty) {
                   return "Vui lòng chọn thành phố";
                 }
                 return null;
               },

             ),

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