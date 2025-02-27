import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../payment Method/add_payment_method.dart';
class AgentPackagesScreen extends StatefulWidget {
  const AgentPackagesScreen({super.key});

  @override
  State<AgentPackagesScreen> createState() => _AgentPackagesScreenState();
}

class _AgentPackagesScreenState extends State<AgentPackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Choose the best package for you",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("           Our Annual Package subscriptions\nare available from as low as RM 5.80 per day ",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.grey),)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPaymentMethod()));},
              child: Container(
                height: 190,
                width: 365,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffDAF4FF),
                        Color(0xff3EA0CA),
                      ],
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("iBasic",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                          Text("RM 2098.80 /year",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Only RM 175 / month for an annual subscription",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("To get you listed",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                        ],
                      ),
                      Divider(thickness: 2,color: Color(0xff185A80),),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Featured Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                          Text("150",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ad Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                          Text("150",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Listing Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                          Text("300",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff185A80)),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPaymentMethod()));},
              child: Container(
                height: 190,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffEFB813),
                      Color(0xffEBE2C5),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("iGold",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                          Text("RM 3052.80 /year",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Only RM 255 / month for an annual subscription",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("To get you listed",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                        ],
                      ),
                      Divider(thickness: 2,color: Colors.black45,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Featured Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                          Text("250",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ad Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                          Text("250",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Listing Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                          Text("600",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPaymentMethod()));},
              child: Container(
                height: 190,
                width: 365,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff797676),
                      Colors.black87,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("iPlatinum",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                          Text("RM 4112.80 /year",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Only RM 346 / month for an annual subscription",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("To get you listed",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),),
                        ],
                      ),
                      Divider(thickness: 2,color: Colors.grey.shade400,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Featured Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                          Text("400",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ad Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                          Text("400",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Listing Credits",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                          Text("1200",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
