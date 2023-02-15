import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Themes/Colors.dart';
import 'package:fyppetsshop/UI/Themes/fonts.dart';
import 'package:fyppetsshop/UI/Widgets/Dogs.dart';
import 'package:fyppetsshop/res.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0),
         child: SingleChildScrollView(
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.dehaze_outlined),
                     CircleAvatar(
                       radius: 20,
                       backgroundColor: kRed,
                       backgroundImage: AssetImage('asset/profilepic.webp')
                     ),
                   ],
                 ),
               SizedBox(
                 height: 20,
               ),
               SizedBox(
                 height: 200,
                 child: Stack(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                       image: DecorationImage(
                         image: AssetImage('asset/catspng5.jpg'),
                         fit: BoxFit.fill,
                       ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 60),
                       child: Column(
                         children: [
                           Text('Hello Farhan ',style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),),
                           Text('Ready for an amazing\nexperience',style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 15
                           ),)
                         ],
                       ),
                     )
                   ],
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Categories',style:extralarge),
                   Text('Seeall',style:extralarge),
                 ],
               ),
               SizedBox(height: 20,),
               Text('Dogs',style: extralarge),
               SizedBox(height: 10),
               Container(
                 height: 220,
                 child:ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     DogList(timetxt: 'dog1', image: Res.dog3, hometxt: 'german'),
                     DogList(timetxt: 'dog1', image: Res.dog2, hometxt: 'pitbull'),
                     DogList(timetxt: 'dog1', image: Res.dog11, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog3, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog2, hometxt: 'haski'),
                     DogList(timetxt: 'dog1', image: Res.dog11, hometxt: 'german'),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Text('Cats',style: extralarge),
               SizedBox(height: 10),
               Container(
                 height: 220,
                 child:ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     DogList(timetxt: 'dog1', image: Res.cats1, hometxt: 'British'),
                     DogList(timetxt: 'dog1', image: Res.cats2, hometxt: 'American'),
                     DogList(timetxt: 'dog1', image: Res.cats1, hometxt: 'Austrilian'),
                     DogList(timetxt: 'dog1', image: Res.cats1, hometxt: 'German'),
                     DogList(timetxt: 'dog1', image: Res.cats2, hometxt: 'Pakistani'),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
    );
  }
}
