import 'package:choose_a_car/util/number_contants.dart';
import 'package:choose_a_car/util/string_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Text(
            titleHome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              size: iconSizeBottomBar,
            ),
          ),
        ],
      ),
    );
  }
}
