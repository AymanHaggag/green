import 'package:flutter/material.dart';


class AppContentCard extends StatelessWidget {
  final Widget? widget;
  final Color? color;

  AppContentCard({
    @required this.widget,
    @required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,),
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: widget,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
