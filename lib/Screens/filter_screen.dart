import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Screens/Seller%20Screens/owner_dashboard_screen.dart';
const List<String>list=<String>["1","2","3","4","5"];
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isCheckedHouse=false;
  bool isCheckedCompound=false;
  bool isCheckedShopHouses=false;
  bool isCheckedApartment=false;


  int isSelected=1;
  RangeValues _currentSliderValues = const RangeValues(80, 1000);
  @override
  void initState() {
    isSelected = 1;
    setState(() {

    });
    super.initState();
  }
String dropdownValue= list.first;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Filters",style: GoogleFonts.lexendDeca(fontSize: 30,fontWeight:FontWeight.w800,color: Color(0xff185a80)),),
      centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(child: Text("Reset",style: GoogleFonts.lexend(fontSize: 17,fontWeight:FontWeight.w400,color: Color(0xff185a80)),)),
          ),
        ],
        leading:IconButton(onPressed: (){Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomeScreen()));}, icon: Icon(Icons.arrow_back_ios_new,color: Color(0xff185a80),)),
        elevation: 15,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelected=1;
                    });
                  },
                  child: Container(
                    height: 65,
                    width: 160,
                    decoration: BoxDecoration(
                      color: isSelected==1?Color(0xff185a80):Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                      child: Text("Buy",style: GoogleFonts.lexend(fontSize: 25,fontWeight:FontWeight.w600,color: isSelected==1?Colors.white:Color((0xff185a80)))),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){setState(() {
                    isSelected=2;
                  });},
                  child: Container(
                    height: 65,
                    width: 160,
                    decoration: BoxDecoration(
                      color: isSelected==2?Color(0xff185a80):Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                          "Rent",style: GoogleFonts.lexend(fontSize: 25,fontWeight:FontWeight.w600,color: isSelected==2?Colors.white:Color((0xff185a80)))
                      ),
                    ),
                    ),
                    ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text("Price",style: GoogleFonts.lexendDeca(fontSize: 30,fontWeight:FontWeight.w800,color: Color(0xff185a80)),),
              ],
            ),
            RangeSlider(
              max: 1000,
              min: 80,
              divisions: 5,
              labels: RangeLabels(
                _currentSliderValues .start.round().toString(),
                _currentSliderValues .end.round().toString(),
              ),
              activeColor: Color(0xff185a80),
              inactiveColor: Color(0xff185a80),
              semanticFormatterCallback: (double newValue) {
                setState(() {

                });
                return '${newValue.round()} Million';
              }  ,
              values: _currentSliderValues, onChanged: (RangeValues value) { setState(() {
              _currentSliderValues = RangeValues(value.start,value.end);
            });   },
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text("Number of Rooms",style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight:FontWeight.w600,color: Color(0xff185a80)),),SizedBox(width: 50,),
                Container(
                  height: 25,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xff185a80))
                  ),
                  child: DropdownButton<String>(
                    items: <String>['1', '2', '3', '4'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Number of Bathroom",style: GoogleFonts.lexendDeca(fontSize: 20,fontWeight:FontWeight.w600,color: Color(0xff185a80)),),SizedBox(width: 20,),
                Container(
                  height: 25,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xff185a80))
                  ),
                  child: DropdownButton<String>(
                    items: <String>['1', '2', '3', '4'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text("Property Type",style: GoogleFonts.lexendDeca(fontSize: 30,fontWeight:FontWeight.w700,color: Color(0xff185a80)),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
            "House",style: GoogleFonts.lexend(fontSize: 18,fontWeight:FontWeight.w500,color: Color((0xff185a80)))),
                  leading: Checkbox(
                    value: isCheckedHouse,
                    onChanged: (value) {
                      setState(() {
                        isCheckedHouse = value!;
                      });
                    },
                    checkColor: Color(0xff185a80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    side: BorderSide(color: Color(0xff185a80)),
                  ),
                ),
                ListTile(
                  title: Text(
                      "Compound",style: GoogleFonts.lexend(fontSize: 18,fontWeight:FontWeight.w500,color:Color((0xff185a80)))),
                  leading: Checkbox(
                    value: isCheckedCompound,
                    onChanged: (value) {
                      setState(() {
                        isCheckedCompound = value!;
                      });
                    },
                    checkColor: Color(0xff185a80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    side: BorderSide(color: Color(0xff185a80)),


                  ),
                ),
                ListTile(
                  title: Text(
                      "ShopHouses",style: GoogleFonts.lexend(fontSize: 18,fontWeight:FontWeight.w500,color: Color((0xff185a80)))),
                  leading: Checkbox(
                    value: isCheckedShopHouses,
                    onChanged: (value) {
                      setState(() {
                        isCheckedShopHouses = value!;
                      });
                    },
                    checkColor: Color(0xff185a80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    side: BorderSide(color: Color(0xff185a80)),
                  ),
                ),
                ListTile(
                  title: Text(
                      "Apartments",style: GoogleFonts.lexend(fontSize: 18,fontWeight:FontWeight.w500,color:Color((0xff185a80)))),
                  leading: Checkbox(
                    value: isCheckedApartment,
                    onChanged: (value) {
                      setState(() {
                        isCheckedApartment = value!;
                      });
                    },
                    checkColor: Color(0xff185a80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    side: BorderSide(color: Color(0xff185a80)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>OwnerDashboard()));},
                  child: Container(
                    height: 45,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Color(0xff185a80),
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Row(mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Text(
                            "See All Results",style: GoogleFonts.lexend(fontSize: 18,fontWeight:FontWeight.w500,color: isSelected==2?Colors.white:Colors.white)),],),
                  ),
                )
              ],
            )

          ],
        ),
      ),

    );
  }
}
