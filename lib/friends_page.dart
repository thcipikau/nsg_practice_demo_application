// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter_application_1/purshare_paid.dart';
import 'package:flutter_application_1/waiting_paid.dart';

import 'friend_page.dart';
import 'main.dart';
import 'events_page.dart';

import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {

  void _navigateToMainPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  void _navigateToFriendsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsPage()));
  }

  void _navigateToEventsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventsPage()));
  }

  void _navigateToFriendPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendPage()));
  }

  void _navigateToPursharePaidPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PursharePaidPage()));
  }

  void _navigateToWaitingPaidPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WaitingPaidPage()));
  }

  TextEditingController _textFieldController = TextEditingController();

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xff474747),
          title: Text('Укажите почту друга ', style: TextStyle(color: Color(0xffADADAD))),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "E-mail"),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4E4E4E)),
              child: Text('Отмена', style: TextStyle(color: Color(0xffADADAD))),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4E4E4E)),
              child: Text('Отправить приглашение', style: TextStyle(color: Color(0xffADADAD))),
              onPressed: () {
                print(_textFieldController.text);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4E4E4E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 18, top: 18, bottom: 18),
                color: Color(0xff474747),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Друзья', style: TextStyle(color: Color(0xffADADAD), fontSize: 40, fontWeight: FontWeight.w100),)
            ],
          ),),)
        ],),

        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: 
                  [
                    ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/profile_foto_example.png'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 177),),
                            Column(
                              children: [
                              Text('Иванов Иван',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('+7 (999) xxx xx-xx',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('ivanov_ivan_92@gmail.com',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                        ],)],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 

                    ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4E4E4E),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/profile_foto_example.png'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 187),),
                            Column(
                              
                              children: [
                              Text('Сидоров Илья',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('+7 (999) xxx xx-xx',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('sidor1989@gmail.com',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                        ],)],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 

                       ElevatedButton(onPressed: () {_navigateToFriendPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4E4E4E),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/profile_foto_example.png'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 150),),
                            Column(
                              
                              children: [
                              Text('Васильев Павел',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('+7 (999) xxx xx-xx',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('naBeJI_BaCuJIbEB@gmail.com',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                        ],)],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 

                       ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4E4E4E),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/profile_foto_example.png'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 150),),
                            Column(
                              children: [
                              Text('Павлов Дмитрий',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('+7 (999) xxx xx-xx',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text('DimAH@gmail.com',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                        ],)],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 

                      ElevatedButton(
                        onPressed: () {_displayTextInputDialog(context);},
                        child: Text('+', style: TextStyle(color: Color(0xffADADAD), fontSize: 42, fontWeight: FontWeight.w100)),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                          backgroundColor: Color(0xff474747), // <-- Button color
                          foregroundColor: Color(0xff474747), // <-- Splash color
                        ),
                      )                 
                  ],)
            )
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                color: Color(0xff474747),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed:  () {_navigateToMainPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(80, 80)),icon: Image.asset('image/profile_foto_example.png')),
                    Padding(padding: EdgeInsets.only(right: 5, left: 5)),
                    IconButton(onPressed:  () {_navigateToFriendsPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(80, 80)),icon: Image.asset('image/friend_icon.png')),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    IconButton(onPressed:  () {_navigateToEventsPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(80, 80)),icon: Image.asset('image/event_foto_example.png')),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    IconButton(onPressed:  () {_navigateToPursharePaidPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(80, 80)),icon: Image.asset('image/purshare_paid.png')),
                    Padding(padding: EdgeInsets.only(right: 5)),
                    IconButton(onPressed:  () {_navigateToWaitingPaidPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(80, 80)),icon: Image.asset('image/waiting_paid.png')),
                    Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),),)
        ],),
        ]
      )
    );
  }

}