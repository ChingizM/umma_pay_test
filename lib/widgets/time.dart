import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                color: Color(0xFFD1D1D6),
                width: 1,
              ),
              bottom: BorderSide(
                color: Color(0xFFD1D1D6),
                width: 1,
              ))),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(child: SvgPicture.asset('assets/icons/Frame.svg')
              //   IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
              ),
          Text(
            'Москва',
            style: TextStyle(color: Color(0xFF558B2F)),
          ),
          Text('7:12'),
          Container(
            padding: EdgeInsets.only(
              // top: 2,
              left: 3,
            ),
            width: 43,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF558B2F),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              '12:43',
              style: TextStyle(color: Color(0xFF558B2F)),
            ),
          ),
          Text('15:29'),
          Text('18:11'),
          Text('19:53'),
          Container(
              child:
                  SvgPicture.asset('assets/icons/notifications_none_24px.svg')
              //   IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
              ),
        ],
      ),
    );
  }
}
