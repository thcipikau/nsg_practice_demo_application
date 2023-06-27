// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:flutter_application_1/purshare_paid.dart';

import 'events_page.dart';
import 'main.dart';
import 'main.dart';
import 'friends_page.dart';

import 'package:flutter/material.dart';

class WaitingPaidPage extends StatelessWidget {

  void _navigateToMainPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  void _navigateToFriendsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendsPage()));
  }

  void _navigateToEventsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EventsPage()));
  }

  void _navigateToEditPaidPage(BuildContext context) {
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
                    Text('Покупки', style: TextStyle(color: Color(0xffADADAD), fontSize: 40, fontWeight: FontWeight.w100),)
            ],
          ),),)
        ],),

        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Column(
                  children: 
                  [
                     Text('Магазин: Mood Place',   textAlign: TextAlign.center, style: TextStyle(color: Color(0xffADADAD), fontSize: 32, fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.only(top: 10)), 
                    ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(fixedSize: Size(double.infinity, 95), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/paid_list_place.jpg'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 130),),
                            Column(
                              children: [
                              Text('Аренда помещения',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text('26.07.2023', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('0 / 7.500 ₽', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('День рождения нач..', textAlign: TextAlign.right ,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              ],)  
                        ],),],)))),  

                    Text('Магазин: Авиасейлс',   textAlign: TextAlign.center, style: TextStyle(color: Color(0xffADADAD), fontSize: 32, fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.only(top: 10)), 
                    ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(fixedSize: Size(double.infinity, 95), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/paid_list_plane.jpg'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 200),),
                            Column(
                              children: [
                              Text('Купить билет',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text('13.08.2023', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('7.500 / 10.000 ₽', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('Отпуск', textAlign: TextAlign.right ,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              ],)  
                        ],),],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 
                      
                    ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(fixedSize: Size(double.infinity, 95), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), )),child: 
                      Expanded( 
                        child: Container(
                          color: Color(0xff4E4E4E),
                          child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)), 
                            Padding(padding: EdgeInsets.only(left: 35)),
                            Image(image: AssetImage('image/paid_list_alcohol.jpg'), width: 64, height: 64,),
                            Padding(padding: EdgeInsets.only(left: 175),),
                            Column(
                              children: [
                              Text('Аренда номера',style: TextStyle(color: Color(0xffADADAD), fontSize: 24, fontWeight: FontWeight.w100)),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text('13.08.2023', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('5.000 / 15.000 ₽', textAlign: TextAlign.right,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),],),
                              Row(children: [
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Text('Отпуск', textAlign: TextAlign.right ,style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w100)),
                              ],)  
                        ],),],)))),                   

                      Padding(padding: EdgeInsets.only(top: 10)), 

                 
     
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