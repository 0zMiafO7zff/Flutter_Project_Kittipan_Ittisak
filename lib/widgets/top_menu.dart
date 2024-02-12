import 'package:flutter/material.dart';

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles({
    required this.name,
    required this.imageUrl,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 5,top: 5,bottom: 5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFae3e2),
                  blurRadius: 25,
                  offset: Offset(0.0, 0.75),
                ),
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset('assets/images/' + imageUrl + '.png',
                  width: 24,
                  height: 24,
                  ),
                )
              ),
            ),
          ),
          Text(
            name, 
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color:  Color(0xFF6e6e71),
            ),
            )
        ],
      ),
    );
  }
}

class TopMenues extends StatelessWidget {
  const TopMenues({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: "",),
          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: "",),
          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", slug: "",),
          TopMenuTiles(name: "Cake", imageUrl: "ic_cake", slug: "",),
          TopMenuTiles(name: "Ice Cream", imageUrl: "ic_ice_cream", slug: "",),
          TopMenuTiles(name: "Soft Drink", imageUrl: "ic_soft_drink", slug: "",),
        ],
      ),
    );
  }
}