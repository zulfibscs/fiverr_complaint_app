import 'package:fiverr_complaint_app/Screens/widgets/post_list_tile.dart';
import 'package:flutter/material.dart';
class ApprovedPostScreen extends StatelessWidget {
  const ApprovedPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Approved Post'),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
          padding: const EdgeInsets.all(12),
          child: PostListTileWidget(userName: 'Buyer Id', des: "What is Lorem Ipsum "
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              btnLable: 'Approve', btnFun: (){})
      )




    );
  }
}
