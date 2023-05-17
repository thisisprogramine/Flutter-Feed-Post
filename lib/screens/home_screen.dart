import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:feed_post/model/mode_list.dart';
import 'package:feed_post/model/model.dart';
import 'package:feed_post/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [
    Model(
        id: 1,
        displayPicture: "https://i.pinimg.com/originals/7e/c3/61/7ec361c375997cf294ab2845ff1142d9.jpg",
        name: "Daniela Swanson",
        location: "Kallam, Osmanabad",
        picture: "https://5.imimg.com/data5/XT/YZ/CN/SELLER-3623778/agricultural-greenhouses-500x500.png",
        like: 245,
        comment: 12,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: true,
        isSave: true
    ),
    Model(
        id: 2,
        displayPicture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvhtGd9smiLse9liZ3OpdCJ8zuduDfUEdC9U6_KG0XVwXn6Kx8xwl1LS3dy9nFsZIQY1Q&usqp=CAU",
        name: "Jaydn Hassan",
        location: "Paranda, Osmanabad",
        picture: "https://i.pinimg.com/originals/fe/81/10/fe8110656f2ef3169ec434121143ed1c.jpg",
        like: 56,
        comment: 42,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: false,
        isSave: true
    ),
    Model(
        id: 3,
        displayPicture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6ZA3JY1A0u0hpn3-K2Yopzb044Gg3bLQxtJslp2tuDExzwRX35EI8aSbArTSUiaB29M0&usqp=CAU",
        name: "Chandler Odonnell",
        location: "Andora, Osmanabad",
        picture: "https://i1.wp.com/700011.xyz/files/funotic/wow/square_watermelon_japan_02.jpg?w=618&ssl=1",
        like: 25,
        comment: 5,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: true,
        isSave: false
    ),
    Model(
        id: 4,
        displayPicture: "https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Suriya-1024x1010.jpg",
        name: "Eugene Kane",
        location: "Kej, Beed",
        picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3oKu_4chtzoFVMsRvfF_bqrXOJhZnv5o9NA&usqp=CAU",
        like: 562,
        comment: 21,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: false,
        isSave: false
    ),
    Model(
        id: 5,
        displayPicture: "https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Vikram.jpg",
        name: "Muhamed Ramirez",
        location: "Osmanabad",
        picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxIVexkDj2lT16BLfJwp-7w_QgcR8IeGjrJQ&usqp=CAU",
        like: 447,
        comment: 0,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: true,
        isSave: false
    ),
    Model(
        id: 6,
        displayPicture: "https://c8.alamy.com/comp/2D1DXPB/bollywood-actor-john-abraham-arrives-for-the-world-premiere-of-life-in-a-metro-at-the-empire-cinema-in-londons-leicester-square-may-8-2007-reutersluke-macgregor-britain-2D1DXPB.jpg",
        name: "Iman Elliott",
        location: "Ausa, Latur",
        picture: "https://media.gettyimages.com/photos/row-of-winturbines-on-farmers-field-picture-id118369976?s=612x612",
        like: 85,
        comment: 52,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: false,
        isSave: true
    ),
    Model(
        id: 7,
        displayPicture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH7yKpSsaMQONdxMiHf94g6aeTWh6KEpi-Ow&usqp=CAU",
        name: "Jakub Reynolds",
        location: "Nilanga, Latur",
        picture: "https://images.pexels.com/photos/2132250/pexels-photo-2132250.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        like: 154,
        comment: 35,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: false,
        isSave: true
    ),
    Model(
        id: 8,
        displayPicture: "https://media.gettyimages.com/photos/bollywood-actor-aamir-khan-interacting-with-students-during-round-picture-id456334420?s=612x612",
        name: "Cristinio Ronaldo",
        location: "Parali, Beed",
        picture: "https://i.stack.imgur.com/Ot9nO.jpgg",
        like: 176,
        comment: 56,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: true,
        isSave: false
    ),
    Model(
        id: 9,
        displayPicture: "https://img.indiaforums.com/media/640x0/51/6772-abhishek-bachchan.jpg",
        name: "Maximilian Tucker",
        location: "Barshi, Solapur",
        picture: "https://images.pexels.com/photos/5231144/pexels-photo-5231144.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        like: 654,
        comment: 68,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: false,
        isSave: true
    ),
    Model(
        id: 10,
        displayPicture: "https://imagevars.gulfnews.com/2019/08/20/190820-amitabh-bachchan_16cada170c3_medium.jpg",
        name: "Kelvin Smith",
        location: "Solapur",
        picture: "https://www.sensefly.com/app/uploads/waypoint/2017/09/eBee_SQ_ag_drone_Matteo_Martin2.jpg",
        like: 883,
        comment: 6,
        description: "The on the farm Lorem Ipsum generator is the work of many nights pulling the string where the cow says moo. Click the button to create text and paragraphs to use in any project you like for free.",
        isLiked: true,
        isSave: false
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7FA),
      appBar: AppBar(
        foregroundColor: Color(0xFFF7F7FA),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          child: data != null ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ItemWidget(model: data[index]);
              }
          ) : Center(child: Text("Empty"),)
      ),
    );
  }



}
