import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_app/food_details.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static double _lowerVelue = 1.0;
  static double _upperVelue = 24.0;

  String timeZone = '';
  int rangeValue = 12;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.purple,
                                      size: 40,
                                    ),
                                    hint: Text(
                                      'Current Location',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    items: <String>[
                                      'Current Location',
                                      'B',
                                      'C',
                                      'D'
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset('images/help.png'),
                                  Text(
                                    'Help!',
                                    style: TextStyle(
                                      color: Color(0xffE522DB),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 50,
                                child: TextFormField(
                                  decoration: new InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    suffixIcon: Icon(Icons.search),
                                    labelText: "Search for a restaurant ...",
                                    labelStyle: TextStyle(color: Colors.black),
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      borderSide: new BorderSide(),
                                    ),
                                    //fillColor: Colors.green
                                  ),
                                  validator: (val) {
                                    if (val.length == 0) {
                                      return "Email cannot be empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.text,
                                  style: new TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: IconButton(
                                  icon: Image.asset('images/slidericon.png'),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, FoodDetails.id);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Moodie Food',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2F434C),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "View All",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff2F434C),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 30,
                                      color: Color(0xffE522DB),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FoodCartBuilder(
                                imageID: '1',
                                foodName: 'ITALIAN',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FoodCartBuilder(
                                imageID: '2',
                                foodName: 'SEA FOOD',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FoodCartBuilder(
                                imageID: '3',
                                foodName: 'HEALTHY',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FoodCartBuilder(
                                imageID: '3',
                                foodName: 'CHINESE',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FoodCartBuilder(
                                imageID: '1',
                                foodName: 'SEA FOOD',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FoodCartBuilder(
                                imageID: '3',
                                foodName: 'SEA FOOD',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Delivery Service',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2F434C),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: const EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF3845DE),
                                      Color(0xFF6611D6),
                                      Color(0xFFE81EDB),
                                    ],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(80.0)),
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 190.0,
                                      minHeight:
                                          36.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'ALL RESTURANTS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            RaisedButton(
                                onPressed: () {},
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Color(0xffffffff),
                                textColor: Color(0xff000000),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Loyalty 65%'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('images/taka.png'),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Hot Dishes',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff2F434C),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('images/flame.png')
                          ],
                        ),
                        Container(
                          height: 105,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              HotDishCard(),
                              HotDishCard(),
                              HotDishCard(),
                              HotDishCard(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Current Order',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff2F434C),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Card(
                              elevation: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Road House',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '12/27/2018',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Divider(
                                              color: Colors.blue,
                                              thickness: 6,
                                            ),
                                            Text(
                                              '$rangeValue:00 ${rangeValue < 12 ? timeZone = 'AM' : timeZone = 'PM'}',
                                              style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Divider(
                                              color: Colors.blue,
                                              thickness: 2,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.white,
                                      thumbColor: Color(0xFFEB1555),
                                      trackHeight: 8.0,
                                      valueIndicatorTextStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      inactiveTickMarkColor: Color(0xffE522DB),
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 15.0),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 20.0),
                                    ),
                                    child: Slider(
                                      label: '🍔',
                                      value: rangeValue.toDouble(),
                                      min: _lowerVelue,
                                      max: _upperVelue,
                                      activeColor: Color(0xffE522DB),
                                      divisions: 12,
                                      onChanged: (double val) {
                                        setState(() {
                                          rangeValue = val.round();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'We think you will enjoy these dishes ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2F434C),
                          ),
                        ),
                        Container(
                          height: 105,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              HotDishCard(),
                              HotDishCard(),
                              HotDishCard(),
                              HotDishCard(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HotDishCard extends StatelessWidget {
  const HotDishCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/hotdish1.png',
          width: 180,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            child: Text(
              'Ordered a 152 times',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FoodCartBuilder extends StatelessWidget {
  const FoodCartBuilder({
    Key key,
    @required this.imageID,
    this.foodName,
  }) : super(key: key);

  final String imageID;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          child: Image.asset(
            'images/food$imageID.jpg',
            width: 102,
            height: 129,
            fit: BoxFit.fill,
          ),
        ),
        Image.asset(
          'images/foodtrans.png',
          width: 102,
          height: 129,
        ),
        Container(
          height: 129,
          width: 102,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$foodName',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Check Italian food restaurants',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
