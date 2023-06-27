// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter_application_1/purshare_paid.dart';
import 'package:flutter_application_1/waiting_paid.dart';

import 'friends_page.dart';
import 'events_page.dart';
import 'main.dart';

import 'package:flutter/material.dart';

class EditEventPage extends StatelessWidget {

  void _navigateToMainPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  void _navigateToFriendsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsPage()));
  }

  void _navigateToEventsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventsPage()));
  }

  void _navigateToPursharePaidPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PursharePaidPage()));
  }

  void _navigateToWaitingPaidPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WaitingPaidPage()));
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
                    Text('Редактирование', style: TextStyle(color: Color(0xffADADAD), fontSize: 40, fontWeight: FontWeight.w100),)
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment : MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: 
                  [
                    Row(children: [
                      Image(image: AssetImage('image/event_foto_example.png'), width: 256, height: 256,),
                      Padding(padding: EdgeInsets.only(left: 35)),
                      IconButton(onPressed:  () {_navigateToMainPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(32, 32)),icon: Image.asset('image/edit.png')),
                      Padding(padding: EdgeInsets.only(top: 35)),
                    ],),
                  
                    Row(children: [
                       Text('День рождения\nначальника',style: TextStyle(color: Color(0xffADADAD), fontSize: 36, fontWeight: FontWeight.w100)),
                      Padding(padding: EdgeInsets.only(left: 35)),
                      IconButton(onPressed:  () {_navigateToMainPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(32, 32)),icon: Image.asset('image/edit.png')),
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ],),
                 
                    Row(children: [
                      Text('26.07.2023',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                      Padding(padding: EdgeInsets.only(left: 35)),
                      IconButton(onPressed:  () {_navigateToMainPage(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xff474747),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9), ), fixedSize: Size(32, 32)),icon: Image.asset('image/edit.png')),
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ],),

                    Row(children: [
                      Text('valovArs@gmail.com',style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                      Padding(padding: EdgeInsets.only(top: 75)),
                    ],)
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
      ],
      )
    );
  }
}

