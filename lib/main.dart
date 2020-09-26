import 'package:flutter/material.dart';
import 'package:umma_pay/widgets/build_body.dart';

// import 'package:umma_pay/widgets/morning.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
      backgroundColor: Color(0xFFE5E5E5),
      // bottomNavigationBar:,
      body: SafeArea(child: buildBody()),
    );
  }
}
