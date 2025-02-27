import 'package:blumo_app/Screens/Seller%20Screens/adding_property_screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AddingPropertyScreen extends StatefulWidget {
  const AddingPropertyScreen({super.key});

  @override
  State<AddingPropertyScreen> createState() => _AddingPropertyScreenState();
}
int isSelected=1;
class _AddingPropertyScreenState extends State<AddingPropertyScreen> {
  @override
  void initState() {
    isSelected = 1;
    setState(() {

    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Step 1 of 4",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Start listing your property",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20),)
                  ],
                ),
                Row(
                  children: [
                    Text("Listing details",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:14,color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Listing type', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),)],
                ),
                SizedBox(height: 15,),
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
                    SizedBox(width: 5,),
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
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address Line 1",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:14,color: Colors.grey),),
                    SizedBox(height: 10,),
                    SizedBox(height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address Line 2",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:14,color: Colors.grey),),
                    SizedBox(height: 10,),
                    SizedBox(height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'City', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    SizedBox(height: 10,),
                    SizedBox(height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Country/Province', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    SizedBox(height: 10,),
                    SizedBox(height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Zip Code', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Nearby Amenties', style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey)),
                        TextSpan(text: '*', style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.red)),
                      ]),),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 200,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff185A80)),borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddingPropertyScreen1()));},
                      child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color(0xff185A80),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(child: Text("Submit",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
