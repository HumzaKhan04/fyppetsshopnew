import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Screens/Petsdetail.dart';
import 'package:fyppetsshop/UI/Themes/fonts.dart';
class DogList extends StatelessWidget {
  final String image;
  final String hometxt;
  final String timetxt;
  DogList({required this.timetxt,required this.image,required this.hometxt});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PetsDetail()));
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          width: 147,
          height: 170,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(image),
                      fit: BoxFit.fill
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 15,
                      width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                      child: Center(
                        child: Text(hometxt,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),),
                      ),
                    ),
                    Icon(Icons.favorite_border,color: Colors.red,)
                  ],
                ),
                SizedBox(height: 3,),
                Text(timetxt,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                )),
                Text('dates')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
