import 'package:flutter/material.dart';
class AgeMonthInfo extends StatelessWidget {
  String info1;
  String info2;
  AgeMonthInfo({
    required this.info1, required this.info2,
});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 55,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.orange[100]
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(info1,style: TextStyle(
              color: Colors.orange[600],
              fontWeight: FontWeight.bold
          ),),
          Text(info2,style: TextStyle(
              color: Colors.grey
          ),),
        ],
      ),
    );
  }
}
