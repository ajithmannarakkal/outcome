import 'package:flutter/material.dart';

class WidgetOne extends StatelessWidget {
  final IconData icons;
  final String title;
  final Color ? color;
  final VoidCallback  onTap;
  const WidgetOne({Key? key,required this.icons,required this.title,required this.onTap, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,child: Row(children: [Row(
      children: [
        SizedBox(width: 8,),
        Icon(icons,size: 35,color: color,),
        SizedBox(width: 20,),
        Text(title,style: TextStyle(fontSize: 16),)
      ],
    )

    ],),

    );
  }
}


