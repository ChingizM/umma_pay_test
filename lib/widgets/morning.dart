import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umma_pay/models/morning_list.dart';
import 'package:umma_pay/widgets/time.dart';

class Morning extends StatefulWidget {
  @override
  MorningState createState() => MorningState();
}

class MorningState extends State<Morning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Color(0xFF558B2F)),
        backgroundColor: Color(0xFFE5E5E5),
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xFF558B2F),
            ),
            onPressed: () {}),
        title: Text(
          'Азкары',
          style: TextStyle(color: Color(0xFF3D3D3D)),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xFF052B32),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Time(),
          Column(
            children:
                List<Widget>.generate(listMorningList.length, (int index) {
              MorningList list = listMorningList[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Time(),
                  Divider(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              list.title,
                              // textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Divider(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15, top: 15),
                            child: Image.asset(list.iconLogo),
                          ),
                          Text(
                            list.subtitle,
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
