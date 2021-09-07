import 'package:flutter/material.dart';

import '../../../../util/color_app.dart';
import '../../../../util/number_contants.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        padding: EdgeInsets.all(paddingBottomBar),
        height: heightBottomBar,
        decoration: BoxDecoration(
            color: ColorApp.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radiusBottomBar),
              topRight: Radius.circular(radiusBottomBar),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
              icon: Icon(
                Icons.auto_awesome_mosaic_rounded,
                size: iconSizeBottomBar,
                color: index ==0? ColorApp.writh: Colors.white24,
              ),
            ),
            
            IconButton(
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: Icon(
                Icons.notifications_none,
                size: iconSizeBottomBar,
                 color: index == 1? ColorApp.writh: Colors.white24,
              ),
            ),
            
            IconButton(
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: Icon(
                Icons.location_on_outlined,
                size: iconSizeBottomBar,
                color: index == 2? ColorApp.writh: Colors.white24,
              ),
            ),
            
            IconButton(
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
              icon: Icon(
                Icons.person_outlined,
                size: iconSizeBottomBar,
                color: index == 3? ColorApp.writh: Colors.white24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
