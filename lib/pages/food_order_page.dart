import 'package:flutter/material.dart';
import 'package:food_app/widgets/cart_items.dart';

class FoodOrderPage extends StatelessWidget {
  const FoodOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 3;
    return Scaffold(
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
        title: Center(
          child: Text(
            "Item Carts",
            style: TextStyle(
              color: Color(0xFF3a3737),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Your Food Cart",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CartItem(
                name: "Grilled Salmon",
                price: "\$250",
                image: "ic_popular_food_1",
                quantity: "2",
              ),
              SizedBox(
                height: 10,
              ),
              CartItem(
                name: "Meat Vegetable",
                price: "\$100",
                image: "ic_popular_food_4",
                quantity: "5",
              ),
              SizedBox(
                height: 10,
              ),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.only(left: 3, right: 3),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color(0xFFfae3e2).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFe6e1e1),
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFe6e1e1),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      fillColor: Colors.white,
                      hintText: "Add Your Promo Code",
                      filled: true,
                      suffixIcon: Icon(
                        Icons.local_offer,
                        color: Color(0xFFfd2c2c),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0xFFfae3e2).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ]),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 30,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Grilled Salmon",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "\$192",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Meat Vegetable",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "\$152",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "\$402",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                    color: Color(0xFF3a3a3b),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0xFFae3e2).withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  )
                ]),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/ic_credit_card.png",
                          width: 50,
                        ),
                        height: 50,
                      ),
                      Text("Credit/Debit Card",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(
                          0xFF3a3a3b,
                        ),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ],
                  ),
                ),
                
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFfd2c2c),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
