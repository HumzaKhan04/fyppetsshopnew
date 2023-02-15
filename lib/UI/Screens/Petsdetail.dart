import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Themes/Colors.dart';
import 'package:fyppetsshop/UI/Themes/fonts.dart';
import 'package:fyppetsshop/UI/Themes/mediaQuery.dart';
import 'package:fyppetsshop/UI/Widgets/AgeMonthinfo.dart';
import 'package:fyppetsshop/res.dart';
class PetsDetail extends StatelessWidget {
  const PetsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
               children: [
                 Image.asset(Res.dog11,
                   height: 600,
                   width: double.infinity,
                   fit: BoxFit.cover,
                   ),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     height: 40,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(42),
                         topRight: Radius.circular(42),
                       ),
                       color: Colors.white,
                     ),
                   ),
                 ),
                 Align(
                   alignment: Alignment.topLeft,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 10),
                       child: GestureDetector(
                         onTap: () {
                           print('hello');
                         },
                           child: Icon(Icons.arrow_circle_left_outlined,size: 40)),
                     )),
               ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('German',style:large,),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.grey,),
                            Text(' Kohat,Pak.',style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ),
            ),
           SizedBox(height: 25,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AgeMonthInfo(info1: '6 Months',info2: 'age',),
                 AgeMonthInfo(info1: 'Brown',info2: 'Color',),
                 AgeMonthInfo(info1: '6KG',info2: 'Weight',),

               ],
             ),
           ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('About me',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text
                  ("The German Shepherd Dog is one of America’s most popular dog breeds — \nfor good reasons. They’re intelligent and capable working dogs. Their devotion and courage are unmatched. And they're amazingly versatile"
                    " The breed also goes by the name Alsatian. Despite their purebred status, you may find German Shepherds in shelters and breed specific rescues. So remember to adopt! Dont shop if this is the breed for you."
                    " The breed also goes by the name Alsatian. Despite their purebred status, you may find German Shepherds in shelters and breed specific rescues. So remember to adopt! Dont shop if this is the breed for you."
            ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Photo Album',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(Res.dog11),fit: BoxFit.fill),

                ),
              ),
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Res.dog3),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
              Container(
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Res.dog2),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
                ],
              ),
            ),

SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
