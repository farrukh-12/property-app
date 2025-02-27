import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/property_model.dart';
class CompareScreen extends StatelessWidget {
  final PropertyModel property1;
  final PropertyModel property2;

  const CompareScreen({super.key, required this.property1, required this.property2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(property1.image),
              Image.asset(property2.image),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(property1.name,style: GoogleFonts.lexend(fontSize: 13,fontWeight: FontWeight.w800,color: Color(0xff185a80)),),
              Text(property2.name,style: GoogleFonts.lexend(fontSize: 13,fontWeight: FontWeight.w800,color: Color(0xff185a80)),),

            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/img/coin.png"),
              Image.asset("assets/images/img/coin.png"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(property1.price,style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
              Text(property2.price,style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/img/square_feet.png"),
              Image.asset("assets/images/img/square_feet.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0,right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(property1.Area,style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
              Text(property2.Area,style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0,right:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/img/installment_icon.png",height: 31,width: 43,),
              Image.asset("assets/images/img/installment_icon.png",height: 31,width: 43,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upto to 10 years\n    installment",style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
              Text("Upto to 15 years\n    installment",style: GoogleFonts.lexend(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xff61BAD1)),),
            ],
          ),
        ),

      ],
    );
  }
}
