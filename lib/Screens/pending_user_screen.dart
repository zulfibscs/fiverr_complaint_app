import 'package:fiverr_complaint_app/Screens/block_unblock_screen.dart.dart';
import 'package:fiverr_complaint_app/Screens/widgets/ListTile.dart';
import 'package:flutter/material.dart';
class PendingUser extends StatelessWidget {
  const PendingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Pending User'),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
       child:CustomListTile(userName: 'Zulfi', tagList: '_@Fiverr_id', userEmail: 'abc@gmail.com', urlImg: 'assets/images/z.jpg',btn1Lable: "Decline",btn2Lable: 'Approve',btn1Fun: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => BlockUnblockScreen(),));
       },btn2Fun: (){},)

       ),


    );
  }
}
