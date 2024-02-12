import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  String name;
  String price;
  String image;
  String quantity;

  CartItem({
        required this.name,
        required this.price,
        required this.image,
        required this.quantity,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0,1),
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/$image.png",
                width: 110,
                height: 100,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(name,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF3a3a3b),
                              fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: Text(price,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF3a3a3b),
                              fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/images/ic_delete.png",
                            width: 25,
                            height: 25,
                          ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.remove),
                            color: Colors.black,
                            iconSize: 18,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFfd2c2c),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.add),
                            color: Color(0xFFfd2c2c),
                            iconSize: 18,
                          ),
                      ],
                    ),
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