import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/listed_property.dart';
import '../../Utils/property_card2.dart';
import '../../Utils/property_model.dart';
class MainDashboardScreen extends StatefulWidget {
   MainDashboardScreen({super.key});
  @override
  State<MainDashboardScreen> createState() => _MainDashboardScreenState();
}
class _MainDashboardScreenState extends State<MainDashboardScreen> {
  late List<PropertyModel>PropertyInfo;
  @override
  int isSelected=1;
  bool passenable=false;
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height*1,
                    child: Stack(
                      children: [
                        Row(children: [
                          Image.asset("assets/Ellipse 1.png")
                        ],),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 165,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,color: Colors.black45,),
                                        Text("Jakarta,Indonesia",style: GoogleFonts.raleway(color: Color(0xff252B5C)),),
                                        Icon(Icons.arrow_drop_down_rounded)
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(color: Colors.green),
                                        ),
                                        child: Center(child: Icon(Icons.notifications_rounded,color: Color(0xff252B5C),),),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(color: Colors.grey,width: 2),
                                        ),
                                        child: CircleAvatar(
                                          foregroundImage: AssetImage("assets/avatar.jpeg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0,right: 15,top:30),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(text: 'Hey, Jonathan!\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                                      TextSpan(text: "Let's start exploring\n", style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w600,color: Color(0xff234F68))),
                                    ]),),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:20.0,right: 20),
                              child: TextField(
                                decoration: InputDecoration(fillColor: Colors.grey.shade200,filled: true,
                                  hintText: "Search House Apartment. etc",
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(12),),
                                  prefixIcon: Icon(Icons.search_rounded,color: Color(0xff252B5C),),
                                  suffixIcon: Icon(Icons.mic_none_rounded),
                                ),

                              ),
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10),
                              child: SizedBox(
                                height: 40,
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
                                            style: GoogleFonts.raleway(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: isSelected==1?Colors.white:Color((0xff234F68))
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: isSelected==1?Color(0xff234F68):Colors.grey.shade200,
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
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: isSelected==2?Colors.white:Color((0xff234F68)),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: isSelected==2?Color(0xff234F68):Colors.grey.shade200,
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
                                            style: GoogleFonts.raleway(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: isSelected==3?Colors.white:Color((0xff234F68)),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: isSelected==3?Color(0xff234F68):Colors.grey.shade200,
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
                                            style: GoogleFonts.raleway(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: isSelected==4?Colors.white:Color((0xff185a80))
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: isSelected==4?Color(0xff234F68):Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: SizedBox(
                                height: 180,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      width: 270,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black45,
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 180,
                                            width: 270,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.black45, // Background color for the entire container
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(25),
                                              child: ColorFiltered(
                                                colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.5),
                                                  BlendMode.darken,
                                                ),
                                                child: Image.asset(
                                                  "assets/image 25.png",
                                                  fit: BoxFit.fill,
                                                  filterQuality: FilterQuality.high,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 20,
                                            left: 25,
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: 'Halloween\n', style: GoogleFonts.lato(fontSize: 22,color: Colors.white)),
                                                TextSpan(text: "Sale!\n\n", style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white)),
                                                TextSpan(text: "All discount upto 60%\n", style: GoogleFonts.lato(fontSize: 16,color: Colors.white)),
                                              ]),),
                                          ),
                                          Positioned(bottom: 0,
                                            child: Container(
                                              height: 56,
                                              width: 93,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                                                color: Color(0xff234F68),
                                              ),
                                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black45,
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 180,
                                            width: 270,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.black45, // Background color for the entire container
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(25),
                                              child: ColorFiltered(
                                                colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.5),
                                                  BlendMode.darken,
                                                ),
                                                child: Image.asset(
                                                  "assets/vacation.jpg",
                                                  fit: BoxFit.fill,
                                                  filterQuality: FilterQuality.high,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            top: 20,
                                            left: 25,
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: 'Summer Vacation\n', style: GoogleFonts.lato(fontSize: 22,color: Colors.white)),
                                                TextSpan(text: "Sale!\n\n", style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white)),
                                                TextSpan(text: "All discount upto 60%\n", style: GoogleFonts.lato(fontSize: 16,color: Colors.white)),
                                              ]),),
                                          ),
                                          Positioned(bottom: 0,
                                            child: Container(
                                              height: 56,
                                              width: 93,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                                                color: Color(0xff234F68),
                                              ),
                                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black45,
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 180,
                                            width: 270,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.black45, // Background color for the entire container
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(25),
                                              child: ColorFiltered(
                                                colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.2),
                                                  BlendMode.darken,
                                                ),
                                                child: Image.asset(
                                                  "assets/vacation2.jpg",
                                                  fit: BoxFit.fill,
                                                  filterQuality: FilterQuality.high,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            top: 20,
                                            left: 25,
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: 'Desired\n', style: GoogleFonts.lato(fontSize: 22,color: Colors.white)),
                                                TextSpan(text: "Destinations!\n\n", style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white)),
                                                TextSpan(text: "All discount upto 60%\n", style: GoogleFonts.lato(fontSize: 16,color: Colors.white)),
                                              ]),),
                                          ),
                                          Positioned(bottom: 0,
                                            child: Container(
                                              height: 56,
                                              width: 93,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                                                color: Color(0xff234F68),
                                              ),
                                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black45,
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 180,
                                            width: 270,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.black45, // Background color for the entire container
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(25),
                                              child: ColorFiltered(
                                                colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.5),
                                                  BlendMode.darken,
                                                ),
                                                child: Image.asset(
                                                  "assets/image 25.png",
                                                  fit: BoxFit.fill,
                                                  filterQuality: FilterQuality.high,
                                                ),
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            top: 20,
                                            left: 25,
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: 'Halloween\n', style: GoogleFonts.lato(fontSize: 22,color: Colors.white)),
                                                TextSpan(text: "Sale!\n\n", style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white)),
                                                TextSpan(text: "All discount upto 60%\n", style: GoogleFonts.lato(fontSize: 16,color: Colors.white)),
                                              ]),),
                                          ),
                                          Positioned(bottom: 0,
                                            child: Container(
                                              height: 56,
                                              width: 93,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                                                color: Color(0xff234F68),
                                              ),
                                              child: Center(child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                children: [
                                  Text("Featured Estates",style: GoogleFonts.lato(color: Color(0xff252B5C),fontSize: 20,fontWeight: FontWeight.w600),),
                                ],
                              ),),
                            SizedBox(height: 25,),

                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: SizedBox(
                                height: 160,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffF5F4F8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          height: 140,
                                                          width: 130,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: Colors.black45, // Background color for the entire container
                                                          ),
                                                          child: ClipRRect(
                                                                borderRadius: BorderRadius.circular(25),
                                                                child: ColorFiltered(
                                                                  colorFilter: ColorFilter.mode(
                                                                    Colors.black.withOpacity(0.2),
                                                                    BlendMode.darken,
                                                                  ),
                                                                  child: Image.asset(
                                                                    "assets/apartments.jpg",
                                                                    fit: BoxFit.fill,
                                                                    filterQuality: FilterQuality.high,
                                                                  ),
                                                                ),
                                                              ),
                                                        ),
                                                        Positioned(
                                                            top: 10,
                                                            left: 10,
                                                            child: Container(
                                                              height: 30,
                                                              width: 30,
                                                             decoration: BoxDecoration(
                                                               borderRadius: BorderRadius.circular(100),
                                                               color: Color(0xff234F68)
                                                             ),
                                                                child:Center(child:IconButton(
                                                                  icon: Icon(Icons.favorite,color: passenable==false?Colors.white:Colors.red,size: 16,),
                                                                  onPressed: () {
                                                                    setState(() {
                                                                      passenable==true;
                                                                    });
                                                                  },
                                                                ),)
                                                            )),
                                                        Positioned(
                                                            bottom: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 60,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Text("Apartment",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),))
                                                            ))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:5.0),
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Sky Dandelion\nApartments",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff252B5C)),),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.star,color: Colors.amber,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("4.5",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.location_on,color: Colors.red,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("Jakarta,Indonesia",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),

                                                      SizedBox(height: 20,),
                                                      Row(
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(children: [
                                                              TextSpan(text: 'RM', style: GoogleFonts.lexend(fontSize: 12,color: Color(0xff252B5C))),
                                                              TextSpan(text: ' 1250', style: GoogleFonts.lexend(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff234F68))),
                                                              TextSpan(text: " /month",style: GoogleFonts.lexend(fontSize: 10,color: Color(0xff53587A)))
                                                            ]),)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffF5F4F8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          height: 140,
                                                          width: 130,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: Colors.black45, // Background color for the entire container
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(25),
                                                            child: ColorFiltered(
                                                              colorFilter: ColorFilter.mode(
                                                                Colors.black.withOpacity(0.2),
                                                                BlendMode.darken,
                                                              ),
                                                              child: Image.asset(
                                                                "assets/Villa.jpg",
                                                                fit: BoxFit.fill,
                                                                filterQuality: FilterQuality.high,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            top: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 30,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:IconButton(
                                                                  icon: Icon(Icons.favorite,color: passenable==false?Colors.white:Colors.red,size: 16,),
                                                                  onPressed: () {
                                                                    setState(() {
                                                                      passenable==true;
                                                                    });
                                                                  },
                                                                ),)
                                                            )),
                                                        Positioned(
                                                            bottom: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 60,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Text("Villa",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),))
                                                            ))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:5.0),
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Sky Dandelion\nVillas",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff252B5C)),),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.star,color: Colors.amber,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("4.5",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.location_on,color: Colors.red,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("Jakarta,Indonesia",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),

                                                      SizedBox(height: 20,),
                                                      Row(
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(children: [
                                                              TextSpan(text: 'RM', style: GoogleFonts.lexend(fontSize: 12,color: Color(0xff252B5C))),
                                                              TextSpan(text: ' 1250', style: GoogleFonts.lexend(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff234F68))),
                                                              TextSpan(text: " /month",style: GoogleFonts.lexend(fontSize: 10,color: Color(0xff53587A)))
                                                            ]),)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffF5F4F8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          height: 140,
                                                          width: 130,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: Colors.black45, // Background color for the entire container
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(25),
                                                            child: ColorFiltered(
                                                              colorFilter: ColorFilter.mode(
                                                                Colors.black.withOpacity(0.2),
                                                                BlendMode.darken,
                                                              ),
                                                              child: Image.asset(
                                                                "assets/apartments.jpg",
                                                                fit: BoxFit.fill,
                                                                filterQuality: FilterQuality.high,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            top: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 30,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Icon(Icons.favorite,color: Colors.white,size: 16,))
                                                            )),
                                                        Positioned(
                                                            bottom: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 60,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Text("Apartment",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),))
                                                            ))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:5.0),
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Sky Dandelion\nApartments",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff252B5C)),),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.star,color: Colors.amber,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("4.5",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.location_on,color: Colors.red,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("Jakarta,Indonesia",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),

                                                      SizedBox(height: 20,),
                                                      Row(
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(children: [
                                                              TextSpan(text: 'RM', style: GoogleFonts.lexend(fontSize: 12,color: Color(0xff252B5C))),
                                                              TextSpan(text: ' 1250', style: GoogleFonts.lexend(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff234F68))),
                                                              TextSpan(text: " /month",style: GoogleFonts.lexend(fontSize: 10,color: Color(0xff53587A)))
                                                            ]),)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffF5F4F8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          height: 140,
                                                          width: 130,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: Colors.black45, // Background color for the entire container
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(25),
                                                            child: ColorFiltered(
                                                              colorFilter: ColorFilter.mode(
                                                                Colors.black.withOpacity(0.2),
                                                                BlendMode.darken,
                                                              ),
                                                              child: Image.asset(
                                                                "assets/apartments.jpg",
                                                                fit: BoxFit.fill,
                                                                filterQuality: FilterQuality.high,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                            top: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 30,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Icon(Icons.favorite,color: Colors.white,size: 16,))
                                                            )),
                                                        Positioned(
                                                            bottom: 10,
                                                            left: 10,
                                                            child: Container(
                                                                height: 30,
                                                                width: 60,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff234F68)
                                                                ),
                                                                child:Center(child:Text("Apartment",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),))
                                                            ))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:5.0),
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Sky Dandelion\nApartments",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff252B5C)),),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.star,color: Colors.amber,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("4.5",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.location_on,color: Colors.red,size: 16,),
                                                          SizedBox(width: 5,),
                                                          Text("Jakarta,Indonesia",style: GoogleFonts.lexend(fontSize: 10,fontWeight:FontWeight.w300,color:Colors.grey),),
                                                        ],),

                                                      SizedBox(height: 20,),
                                                      Row(
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(children: [
                                                              TextSpan(text: 'RM', style: GoogleFonts.lexend(fontSize: 12,color: Color(0xff252B5C))),
                                                              TextSpan(text: ' 1250', style: GoogleFonts.lexend(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff234F68))),
                                                              TextSpan(text: " /month",style: GoogleFonts.lexend(fontSize: 10,color: Color(0xff53587A)))
                                                            ]),)
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:20
                            ),
                            Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                children: [
                                  Text("Explore Nearby Estates",style: GoogleFonts.lato(color: Color(0xff252B5C),fontSize: 20,fontWeight: FontWeight.w600),),
                                ],
                              ),),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  itemCount: 5,
                                  physics:NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return PropertyCard2(press: () {}, listedproperty: listedproperty[index], );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
          floatingActionButton:FloatingActionButton(onPressed: (){},
            child: Icon(Icons.message,color: Color(0xff185A80),),backgroundColor: Colors.grey.shade300,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    ));
  }
}
