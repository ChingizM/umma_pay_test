import 'package:flutter/widgets.dart';
import 'package:umma_pay/widgets/card.dart';
import 'package:umma_pay/widgets/morning.dart';
import 'package:umma_pay/widgets/time.dart';

Widget buildBody() {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Time(),
        Card(),
        // Morning(),
      ],
    ),
  );
}
