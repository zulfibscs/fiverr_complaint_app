import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class DashboardScreen extends StatelessWidget {

  List<Map<String, dynamic>> dataList = [
    {'icon': Icons.notifications, 'title': 'Send Notification'},
    {'icon': Icons.verified_user, 'title': 'Pending User'},
    {'icon': Icons.block, 'title': 'Block/unblock User'},
    {'icon': Icons.pending, 'title': 'Pending Pst'},
    {'icon': Icons.person_add, 'title': 'User List'},
    {'icon': Icons.cloud_done, 'title': 'Approve Post'},
    // ... add more items
  ];
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
          color: Colors.transparent,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0,bottom: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                    child: Text("DASHBOARD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 23),)),
              )
          ),
      ),
        ),
          Expanded(
            flex: 4,
              child:Container(
                child: GridView.builder(
                  padding: EdgeInsets.all(20),

                  itemCount: dataList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                        mainAxisExtent: 80,
                        childAspectRatio: 120,
                        mainAxisSpacing: 12,
                        crossAxisCount: 2
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 1),
                                blurRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.circular(4.0),


                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(dataList[index]['icon']),
                            SizedBox(height: 16,),
                            Text(dataList[index]['title'])
                          ],
                        ),
                      );
                    },),
              ),
          )

        ],
      ),
    );
  }
}
