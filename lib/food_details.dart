import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/google_map.dart';

class FoodDetails extends StatefulWidget {
  static String id = 'FoodDetails';
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, GoogleMapScreen.id);
        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.purple,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'images/bakery.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Image.asset('images/rectangle.png'),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: ClipOval(
                          child: Image.asset(
                            'images/resturant_profile.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Restaurant Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Available for 24 hr',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Aglio Olio Fillet Loremipsum dolor sit amet, con sectetuer adipiscing elit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '3500 SP',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
