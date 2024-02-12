import 'package:flutter/material.dart';
import 'package:food_app/animation/scale_route.dart';
import 'package:food_app/pages/foods_details_page.dart';

class BestFoodTiles extends StatelessWidget {
  
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  BestFoodTiles({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.numberOfRating,
    required this.price,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
              child: Image.asset("assets/images/"+imageUrl+'.jpeg'),
            ),
          ),
        ],
      )
    );
  } 
}

class BestFoodsList extends StatelessWidget {
  const BestFoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BestFoodTiles(
        name: "Fried Egg",
        imageUrl: "ic_best_food_8",
        rating: "4.9",
        numberOfRating: "200",
        price: "15.6",
        slug: "fried egg",
      ),
      BestFoodTiles(
        name: "Fried Egg",
        imageUrl: "ic_best_food_9",
        rating: "4.9",
        numberOfRating: "200",
        price: "15.6",
        slug: "fried egg",
      ),
      BestFoodTiles(
        name: "Fried Egg",
        imageUrl: "ic_best_food_5",
        rating: "4.9",
        numberOfRating: "200",
        price: "15.6",
        slug: "fried egg",
      ),BestFoodTiles(
        name: "Fried Egg",
        imageUrl: "ic_best_food_1",
        rating: "4.9",
        numberOfRating: "200",
        price: "15.6",
        slug: "fried egg",
      )
      ],
    );
  }
}
