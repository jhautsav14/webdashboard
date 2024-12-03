import 'package:flutter/material.dart';
import 'package:webdashboard/constants/style.dart';
import 'package:webdashboard/helpers/responsiveness.dart';
import 'package:webdashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
  AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)?
    Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 14),
          child: Image.asset("logo.png",height: 40,),
        )
      ],

    ): IconButton(onPressed: ()=> key.currentState?.openDrawer(), icon: Icon(Icons.menu)),
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Visibility(child: CustomText(text: "DashBoard", color: lightGray, size: 20, fontWeight: FontWeight.bold,)),
        Expanded(child: Container()),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: dark.withOpacity(0.7),)),
        Stack(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: dark.withOpacity(0.7),)),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: light,width: 2)),
              ))
          ],
        ),
        Container(
          width: 1, height: 22,
          color: lightGray,
        ),
        SizedBox(
          width: 24,
        ),
        CustomText(text: "Utsav", color: active,),
        SizedBox(width: 16,),

        Container(decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(30)
        
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: light,
            child: Icon(Icons.person_2_outlined, color: active,),),
        ),
        )
      ],
    ),
    iconTheme: IconThemeData(color: dark),
    
  );