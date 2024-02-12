import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/animation/scale_route.dart';
import 'package:food_app/pages/food_order_page.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
          ),
          actions: [
            IconButton(
              // onPressed: ()=> Navigator.of(context).pop(),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
              },
              icon: Icon(
                Icons.business_center,
                color: Color(0xFF3a3737),
              ),
            ),
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/ic_best_food_8.jpeg"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 1,
                margin: EdgeInsets.all(5),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grilled Salmon",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$96.00",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                      "Free Delivery",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFa4a1a1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 22,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                width: 5,
              ),
                Text(
                      "(305)",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFa4a1a1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(
                  labelColor: Colors.redAccent,
                  indicatorColor: Colors.redAccent,
                  unselectedLabelColor: Color(0xFFa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  tabs: [
                    Tab(
                      text: "Food Details",
                    ),
                    Tab(
                      text: "Food Reviews",
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      margin: EdgeInsets.only(top: 10),
                      child: Container(
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              height: 1.50,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                      ),
                    ),
                    Container(
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              height: 1.50,
                              ),
                              textAlign: TextAlign.justify,
                          ),
                      ),
                      
                  ],
                ),
              ),
              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.timelapse,
                                color: Color(0xFF404aff),
                                size: 35,
                              ),
                              SizedBox(height: 15,),
                              Text("12PM-2PM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFa9a9a9),
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.directions,
                                color: Color(0xFF23c58a),
                                size: 35,
                              ),
                              SizedBox(height: 15,),
                              Text("3.5 KM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFa9a9a9),
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.map,
                                color: Color(0xFFff0654),
                                size: 35,
                              ),
                              SizedBox(height: 15,),
                              Text("Map View",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFa9a9a9),
                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.directions_bike,
                                color: Color(0xFFe95959),
                                size: 35,
                              ),
                              SizedBox(height: 15,),
                              Text("Delivery",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFa9a9a9),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
