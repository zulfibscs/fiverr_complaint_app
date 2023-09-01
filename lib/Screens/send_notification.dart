import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class SendNotification extends StatelessWidget {
  const SendNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Notification'),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: Column(
            children: [
              TextField(
                decoration:InputDecoration(
                  label: Text(' From  ',),
                  labelStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 19),
                  hintText: 'Application Name',
                    hintStyle: TextStyle(color: Colors.black),
                    floatingLabelBehavior:FloatingLabelBehavior.always,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ) ,),
              SizedBox(height: 12,),
              TextField(
                minLines: 12,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration:InputDecoration(
                  hintText: 'Enter Description...',
                    hintStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),


                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ) ,),
                Padding(
                  padding: const EdgeInsets.all(118.0),
                  child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Send",style: TextStyle(fontWeight: FontWeight.w300),)),
                  ),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    ),
    )),
                )
            ],
          ),
        ),
      ),
    );
  }
}
