import 'package:blumo_app/Utils/listed_property.dart';
import 'package:blumo_app/Utils/property_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/property_detail_screen.dart';

class PropertyCard2 extends StatefulWidget {
  final ListedProperty listedproperty;
  final VoidCallback press;

  PropertyCard2({super.key, required this.listedproperty, required this.press,});

  @override
  State<PropertyCard2> createState() => _PropertyCard2State();
}

class _PropertyCard2State extends State<PropertyCard2> {
  bool passenable=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PropertyDetailScreen(listedproperty: widget.listedproperty,)));},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          width:MediaQuery.of(context).size.width*1,
          height: 247,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 5,
              spreadRadius: 0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ]
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                      children: [
                        Container(height:150,width:368,decoration:BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8),),color: Colors.white,
                        image: DecorationImage(image: AssetImage(widget.listedproperty.image,),fit: BoxFit.fill),
                      )),
                        Positioned(top:10,right:10,child: GestureDetector
                          (child: ImageIcon(AssetImage("assets/Vector.png"), color: passenable==false?Colors.white:Colors.red),
                          onTap: (){setState(() {
                            passenable=true;
                          });},),),
                      ]
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left:5.0,right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${widget.listedproperty.price} USD",style: GoogleFonts.poppins(fontSize:16,fontWeight: FontWeight.bold ),),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5),
                child: Row(
                  children: [
                    Text("${widget.listedproperty.brs} bds ",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
                    Text("| ",style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey,),),
                    Text("${widget.listedproperty.bds} brs ",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
                    Text("| ",style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey,),),
                    Text("${widget.listedproperty.area} ",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
                    Text("| ",style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey,),),
                    Text("Home for Sale",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5),
                child: Row(
                  children: [
                    Text(widget.listedproperty.address,style: GoogleFonts.poppins(fontSize: 14,),)
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5),
                child: Row(
                  children: [
                    Text(widget.listedproperty.company,style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
