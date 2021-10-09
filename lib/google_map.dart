import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  static String id = 'GoogleMapScreen';
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController mapController;
  String searchAddr;
  static double _lowerVelue = 1.0;
  static double _upperVelue = 24.0;
  int rangeValue = 18;
  searchandNavigate() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
              LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
    });
  }

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.3500, 90.8917),
    zoom: 10.0,
  );
  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  final List<Marker> markers = [];
  addMarker(coordinate) {
    int id = Random().nextInt(100);
    setState(() {
      markers
          .add(Marker(position: coordinate, markerId: MarkerId(id.toString())));
    });
  }

  String searchAdd;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffffffff)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Address',
                      //border: InputBorder.none,
                      //contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: searchandNavigate,
                          iconSize: 30.0)),
                  onChanged: (val) {
                    setState(() {
                      searchAddr = val;
                      print(val);
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: <Widget>[
                    GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: onMapCreated,
                      onTap: (coordinate) {
                        addMarker(coordinate);
                      },
                      markers: markers.toSet(),
                    ),
                    Positioned(
                      top: 280,
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Set Mood",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  ChipsBuilder(
                                    chipsNo: '1',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '2',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '3',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '4',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '5',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '6',
                                  ),
                                  ChipsBuilder(
                                    chipsNo: '7',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 150,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Set Radius',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
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
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(80.0)),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(80.0)),
                                        ),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                              minWidth: 190.0,
                                              minHeight:
                                                  50.0), // min sizes for Material buttons
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'APPLY',
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChipsBuilder extends StatelessWidget {
  const ChipsBuilder({Key key, this.chipsNo}) : super(key: key);

  final String chipsNo;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.white,
      padding: EdgeInsets.all(5.0),
      shape: CircleBorder(),
      child: Image.asset('images/icon$chipsNo.png'),
    );
  }
}
