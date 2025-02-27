import 'dart:async';
import 'package:blumo_app/Utils/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:blumo_app/Screens/filter_screen.dart';
import 'package:we_slide/we_slide.dart';

import '../Utils/bottom_navbar.dart';
import 'Buyer Screens/main_dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected=1;
  int currentPageIndex = 0;
  @override
  void initState() {
    isSelected = 1;
    setState(() {

    });
    super.initState();
    _marker.addAll(_list);
  }
  Completer<GoogleMapController>_controller=Completer();
  static final CameraPosition _kGooglePlex=const CameraPosition(target: LatLng(33.6163, 73.1692),zoom: 14.4746);

  List<Marker> _marker=[
    
  ];
  List<Marker> _list=const[
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(33.6163, 73.1692),
      infoWindow: InfoWindow(
        title: "Blockyfy",
      ),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng( 35.6762,139.6503),
      infoWindow: InfoWindow(
          title: "Japan"
      ),)
  ];
  Widget build(BuildContext context) {
    final double _panelMinSize = 0.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height*8 ;
    return SafeArea(
      child: Scaffold(
        bottomSheet: WeSlide(
          panelMaxSize: MediaQuery.of(context).size.height,
          panelMinSize: 80,
          body: Stack(
            children: [
              GoogleMap(initialCameraPosition: _kGooglePlex),
              Positioned.fill(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          width: 375,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(color: Colors.white),
                            color: Colors.white
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 1,
                                top: -24,
                                left: -6,
                                child: Text(
                                  "B",
                                  style: GoogleFonts.modak(
                                    fontSize: 72,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff2944C3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                         // filled: true,
                                          //fillColor: Colors.white,
                                          border: InputBorder.none,
                                          labelText: "Find property, nearby places, etc",
                                          labelStyle: GoogleFonts.lexend(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff185a80),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              "Category",
                              style: GoogleFonts.lexendExa(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff185a80),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          height: 34,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isSelected=1;
                                  });
                                },
                                child: Container(
                                  width: 75,
                                  child: Center(
                                    child: Text(
                                      "All",
                                      style: GoogleFonts.lexendExa(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                          color: isSelected==1?Colors.white:Color((0xff185a80))
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: isSelected==1?Color(0xff2944C3):Colors.white,
                                  ),
                                ),
                              ),
                                 SizedBox(width: 10,),
                                 GestureDetector(
                                   onTap: (){
                                     setState(() {
                                       isSelected=2;
                                     });
                                   },
                                   child: Container(
                                    width: 75,

                                    child: Center(
                                      child: Text(
                                        'House',
                                        style: GoogleFonts.lexendExa(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: isSelected==2?Colors.white:Color((0xff185a80)),
                                        ),
                                      ),
                                    ),
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(4),
                                       color: isSelected==2?Color(0xff2944C3):Colors.white,
                                     ),
                                ),
                                 ),
                              SizedBox(width: 10,),

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isSelected=3;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Compound',
                                      style: GoogleFonts.lexendExa(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: isSelected==3?Colors.white:Color((0xff185a80)),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: isSelected==3?Color(0xff2944C3):Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isSelected=4;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      'Apartment',
                                      style: GoogleFonts.lexendExa(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                          color: isSelected==4?Colors.white:Color((0xff185a80))
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: isSelected==4?Color(0xff2944C3):Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));},child: Icon(Icons.filter_alt_outlined,color: Colors.black,),backgroundColor: Colors.white,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          panel: MainDashboardScreen(),
          panelHeader: Container(
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),color: Colors.grey.shade400,),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 30,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      width: 40,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Available Properties",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff185A80)),)
                    ],
                  ),
                )
              ],
            )
          ),
          isDismissible: false,
          isUpSlide: true,


        ),
      )

    );
  }
}


