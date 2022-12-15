import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab11_me/components/datatheme.dart';

Drawer drawerr() {
    return Drawer(
        
        backgroundColor: backcolorLite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: backcolorMain,),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("images/Nama.png")),
                  accountName: Text("vipnama."),
                  accountEmail: Text("vipnama@gmail.com"),
                ),
                //Wrap(alignment: WrapAlignment.start, children: [Text('Click'),Icon(Icons.add),Text('to add'), ],),
              ListTile(
                        title: Text("Home",style: TextStyle(color: Colors.white),),
                        leading: Icon(Icons.home,color: Colors.white,),
                        onTap: () {
                          // Get.off(()=> homeMenue());
                        }),
                    ListTile(
                        title: Text("My products",style: TextStyle(color: Colors.white)),
                        leading: Icon(Icons.add_shopping_cart,color: Colors.white,),
                        onTap: () {
                            // Get.off(()=> homeMenue());
                        // 
                        }),
                    ListTile(
                        title: Text("About",style: TextStyle(color: Colors.white)),
                        leading: Icon(Icons.help_center,color: Colors.white,),
                        onTap: () {
                        // Get.off(()=> about());
                        }),
                    ListTile(
                        title: Text("Logout",style: TextStyle(color: Colors.white)),
                        leading: Icon(Icons.exit_to_app,color: Colors.white,),
                        onTap: () {
                          // Get.off(()=> signinPage());
                        }),
                  
                ],),
                Container(
              margin: EdgeInsets.only(bottom: 12,top:33),
              child: Text("vipnama © 2022",
                  style: TextStyle(fontSize: 12,)),
            )
          ],
        ),

        );
  }

