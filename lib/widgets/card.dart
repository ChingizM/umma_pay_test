import 'package:flutter/material.dart';
import 'package:umma_pay/models/card_list.dart';
import 'package:umma_pay/widgets/time.dart';
import 'package:umma_pay/widgets/morning.dart';

import '../main.dart';

class Card extends StatefulWidget {
  @override
  CardState createState() => CardState();
}

class CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: List<Widget>.generate(listCardList.length, (int index) {
        CardList list = listCardList[index];
        return Container(
          padding: EdgeInsets.all(15),
          // margin: EdgeInsets.only(left: 7),
          // width: double.infinity,
          // height: 120,
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                // padding: EdgeInsets.all(20),
                width: 343,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(list.iconLogo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 1,
                indent: 72,
                endIndent: 26,
              ),
              Positioned(
                top: 61,
                left: 32,
                // width: 54,
                // height: 23,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        list.title,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        list.subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF558B2F),
                        ),
                      ),
                    ]),
              ),
              Positioned(
                  top: 65,
                  left: 85,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Morning()),
                      );
                    },
                    // child:
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 7,
                      color: Color(0xFF558B2F),
                    ),
                  )),
              // Divider(
              //   color: Colors.grey,
              //   height: 1,
              //   indent: 72,
              //   endIndent: 26,
              // ),
            ],
          ),
        );
      }),
    );
  }
}
