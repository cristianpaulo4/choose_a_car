import 'package:choose_a_car/util/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BrandSection extends StatefulWidget {
  const BrandSection({Key? key}) : super(key: key);

  @override
  State<BrandSection> createState() => _BrandSectionState();
}

class _BrandSectionState extends State<BrandSection> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Brands",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_,i) {
                return _brand(i);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _brand(int i) {
    return Center(
      child: GestureDetector(
        onTap: (){
          setState(() {
            index = i;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            right: 20,
          ),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: index==i? ColorApp.blue:Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'All',
            style: TextStyle(
              color: index!=i? ColorApp.black:Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
